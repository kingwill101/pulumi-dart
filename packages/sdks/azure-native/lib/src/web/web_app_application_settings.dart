import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_app_application_settings_args.dart';

/// String dictionary resource.
///
/// Uses Azure REST API version 2025-05-01. In version 2.x of the Azure Native provider, it used API version 2022-09-01.
///
/// Other available API versions: 2016-08-01, 2018-02-01, 2018-11-01, 2019-08-01, 2020-06-01, 2020-09-01, 2020-10-01, 2020-12-01, 2021-01-01, 2021-01-15, 2021-02-01, 2021-03-01, 2022-03-01, 2022-09-01, 2023-01-01, 2023-12-01, 2024-04-01, 2024-11-01, 2025-03-01, 2026-03-01-preview, 2026-03-15, 2026-07-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native web [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Update App Settings
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webAppApplicationSettings = new AzureNative.Web.WebAppApplicationSettings("webAppApplicationSettings", new()
///     {
///         Name = "sitef6141",
///         Properties =
///         {
///             { "Setting1", "Value1" },
///             { "Setting2", "Value2" },
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
/// 		_, err := web.NewWebAppApplicationSettings(ctx, "webAppApplicationSettings", &web.WebAppApplicationSettingsArgs{
/// 			Name: pulumi.String("sitef6141"),
/// 			Properties: pulumi.StringMap{
/// 				"Setting1": pulumi.String("Value1"),
/// 				"Setting2": pulumi.String("Value2"),
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
/// resource "azure-native_web_webappapplicationsettings" "webAppApplicationSettings" {
///   name = "sitef6141"
///   properties = {
///     "Setting1" = "Value1"
///     "Setting2" = "Value2"
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
/// import com.pulumi.azurenative.web.WebAppApplicationSettings;
/// import com.pulumi.azurenative.web.WebAppApplicationSettingsArgs;
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
///         var webAppApplicationSettings = new WebAppApplicationSettings("webAppApplicationSettings", WebAppApplicationSettingsArgs.builder()
///             .name("sitef6141")
///             .properties(Map.ofEntries(
///                 Map.entry("Setting1", "Value1"),
///                 Map.entry("Setting2", "Value2")
///             ))
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
/// const webAppApplicationSettings = new azure_native.web.WebAppApplicationSettings("webAppApplicationSettings", {
///     name: "sitef6141",
///     properties: {
///         Setting1: "Value1",
///         Setting2: "Value2",
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
/// web_app_application_settings = azure_native.web.WebAppApplicationSettings("webAppApplicationSettings",
///     name="sitef6141",
///     properties={
///         "Setting1": "Value1",
///         "Setting2": "Value2",
///     },
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   webAppApplicationSettings:
///     type: azure-native:web:WebAppApplicationSettings
///     properties:
///       name: sitef6141
///       properties:
///         Setting1: Value1
///         Setting2: Value2
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
/// $ pulumi import azure-native:web:WebAppApplicationSettings appsettings /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Web/sites/{name}/config/appsettings
/// ```
class WebAppApplicationSettings extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Kind of resource.
  late final pulumi.Output<String?> kind;
  /// Resource Name.
  late final pulumi.Output<String> name;
  /// Settings.
  late final pulumi.Output<Map<String, String>> properties;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebAppApplicationSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebAppApplicationSettings]. {@macro pulumi_web_web_app_application_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebAppApplicationSettings(
    String name, {
    WebAppApplicationSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:web:WebAppApplicationSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [WebAppApplicationSettings] resource.
  WebAppApplicationSettings.reference(String urn)
    : super(
        'azure-native:web:WebAppApplicationSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}

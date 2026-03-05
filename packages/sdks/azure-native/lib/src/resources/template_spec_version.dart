import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'template_spec_version_args.dart';

/// Template Spec Version object.
///
/// Uses Azure REST API version 2022-02-01. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TemplateSpecVersionsCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var templateSpecVersion = new AzureNative.Resources.TemplateSpecVersion("templateSpecVersion", new()
///     {
///         Description = "This is version v1.0 of our template content",
///         Location = "eastus",
///         MainTemplate = new Dictionary<string, object?>
///         {
///             ["$schema"] = "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
///             ["contentVersion"] = "1.0.0.0",
///             ["parameters"] = new Dictionary<string, object?>
///             {
///             },
///             ["resources"] = new[]
///             {
///             },
///         },
///         ResourceGroupName = "templateSpecRG",
///         TemplateSpecName = "simpleTemplateSpec",
///         TemplateSpecVersion = "v1.0",
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
/// 	resources "github.com/pulumi/pulumi-azure-native-sdk/resources/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resources.NewTemplateSpecVersion(ctx, "templateSpecVersion", &resources.TemplateSpecVersionArgs{
/// 			Description: pulumi.String("This is version v1.0 of our template content"),
/// 			Location:    pulumi.String("eastus"),
/// 			MainTemplate: pulumi.Any(map[string]interface{}{
/// 				"$schema":        "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
/// 				"contentVersion": "1.0.0.0",
/// 				"parameters":     map[string]interface{}{},
/// 				"resources":      []interface{}{},
/// 			}),
/// 			ResourceGroupName:   pulumi.String("templateSpecRG"),
/// 			TemplateSpecName:    pulumi.String("simpleTemplateSpec"),
/// 			TemplateSpecVersion: pulumi.String("v1.0"),
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
/// import com.pulumi.azurenative.resources.TemplateSpecVersion;
/// import com.pulumi.azurenative.resources.TemplateSpecVersionArgs;
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
///         var templateSpecVersion = new TemplateSpecVersion("templateSpecVersion", TemplateSpecVersionArgs.builder()
///             .description("This is version v1.0 of our template content")
///             .location("eastus")
///             .mainTemplate(Map.ofEntries(
///                 Map.entry("$schema", "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#"),
///                 Map.entry("contentVersion", "1.0.0.0"),
///                 Map.entry("parameters", Map.ofEntries(
///                 )),
///                 Map.entry("resources", )
///             ))
///             .resourceGroupName("templateSpecRG")
///             .templateSpecName("simpleTemplateSpec")
///             .templateSpecVersion("v1.0")
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
/// const templateSpecVersion = new azure_native.resources.TemplateSpecVersion("templateSpecVersion", {
///     description: "This is version v1.0 of our template content",
///     location: "eastus",
///     mainTemplate: {
///         $schema: "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
///         contentVersion: "1.0.0.0",
///         parameters: {},
///         resources: [],
///     },
///     resourceGroupName: "templateSpecRG",
///     templateSpecName: "simpleTemplateSpec",
///     templateSpecVersion: "v1.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// template_spec_version = azure_native.resources.TemplateSpecVersion("templateSpecVersion",
///     description="This is version v1.0 of our template content",
///     location="eastus",
///     main_template={
///         "$schema": "http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#",
///         "contentVersion": "1.0.0.0",
///         "parameters": {},
///         "resources": [],
///     },
///     resource_group_name="templateSpecRG",
///     template_spec_name="simpleTemplateSpec",
///     template_spec_version="v1.0")
///
/// ```
///
/// ```yaml
/// resources:
///   templateSpecVersion:
///     type: azure-native:resources:TemplateSpecVersion
///     properties:
///       description: This is version v1.0 of our template content
///       location: eastus
///       mainTemplate:
///         $schema: http://schema.management.azure.com/schemas/2015-01-01/deploymentTemplate.json#
///         contentVersion: 1.0.0.0
///         parameters: {}
///         resources: []
///       resourceGroupName: templateSpecRG
///       templateSpecName: simpleTemplateSpec
///       templateSpecVersion: v1.0
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
/// $ pulumi import azure-native:resources:TemplateSpecVersion v1.0 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Resources/templateSpecs/{templateSpecName}/versions/{templateSpecVersion}
/// ```
class TemplateSpecVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Template Spec version description.
  late final pulumi.Output<String?> description;

  /// An array of linked template artifacts.
  late final pulumi.Output<List<Map<String, dynamic>>?> linkedTemplates;

  /// The location of the Template Spec Version. It must match the location of the parent Template Spec.
  late final pulumi.Output<String> location;

  /// The main Azure Resource Manager template content.
  late final pulumi.Output<dynamic> mainTemplate;

  /// The version metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  late final pulumi.Output<dynamic> metadata;

  /// Name of this resource.
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Type of this resource.
  late final pulumi.Output<String> type;

  /// The Azure Resource Manager template UI definition content.
  late final pulumi.Output<dynamic> uiFormDefinition;

  /// Creates a new [TemplateSpecVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateSpecVersion]. {@macro pulumi_resources_template_spec_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateSpecVersion(
    String name, {
    TemplateSpecVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:resources:TemplateSpecVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    linkedTemplates = registerOutput<List<Map<String, dynamic>>?>(
      'linkedTemplates',
    );
    location = registerOutput<String>('location');
    mainTemplate = registerOutput<dynamic>('mainTemplate');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    uiFormDefinition = registerOutput<dynamic>('uiFormDefinition');
  }
}

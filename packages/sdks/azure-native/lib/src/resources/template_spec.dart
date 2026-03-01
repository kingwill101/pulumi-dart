import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'template_spec_args.dart';
import 'template_spec_version_info_response.dart';

/// Template Spec object.
///
/// Uses Azure REST API version 2022-02-01. In version 2.x of the Azure Native provider, it used API version 2022-02-01.
///
/// Other available API versions: 2021-03-01-preview, 2021-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native resources [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TemplateSpecsCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var templateSpec = new AzureNative.Resources.TemplateSpec("templateSpec", new()
///     {
///         Description = "A very simple Template Spec",
///         Location = "eastus",
///         ResourceGroupName = "templateSpecRG",
///         TemplateSpecName = "simpleTemplateSpec",
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
/// 		_, err := resources.NewTemplateSpec(ctx, "templateSpec", &resources.TemplateSpecArgs{
/// 			Description:       pulumi.String("A very simple Template Spec"),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("templateSpecRG"),
/// 			TemplateSpecName:  pulumi.String("simpleTemplateSpec"),
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
/// import com.pulumi.azurenative.resources.TemplateSpec;
/// import com.pulumi.azurenative.resources.TemplateSpecArgs;
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
///         var templateSpec = new TemplateSpec("templateSpec", TemplateSpecArgs.builder()
///             .description("A very simple Template Spec")
///             .location("eastus")
///             .resourceGroupName("templateSpecRG")
///             .templateSpecName("simpleTemplateSpec")
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
/// const templateSpec = new azure_native.resources.TemplateSpec("templateSpec", {
///     description: "A very simple Template Spec",
///     location: "eastus",
///     resourceGroupName: "templateSpecRG",
///     templateSpecName: "simpleTemplateSpec",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// template_spec = azure_native.resources.TemplateSpec("templateSpec",
///     description="A very simple Template Spec",
///     location="eastus",
///     resource_group_name="templateSpecRG",
///     template_spec_name="simpleTemplateSpec")
///
/// ```
///
/// ```yaml
/// resources:
///   templateSpec:
///     type: azure-native:resources:TemplateSpec
///     properties:
///       description: A very simple Template Spec
///       location: eastus
///       resourceGroupName: templateSpecRG
///       templateSpecName: simpleTemplateSpec
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
/// $ pulumi import azure-native:resources:TemplateSpec simpleTemplateSpec /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Resources/templateSpecs/{templateSpecName}
/// ```
class TemplateSpec extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Template Spec description.
  late final pulumi.Output<String?> description;
  /// Template Spec display name.
  late final pulumi.Output<String?> displayName;
  /// The location of the Template Spec. It cannot be changed after Template Spec creation. It must be one of the supported Azure locations.
  late final pulumi.Output<String> location;
  /// The Template Spec metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  late final pulumi.Output<dynamic> metadata;
  /// Name of this resource.
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Type of this resource.
  late final pulumi.Output<String> type;
  /// High-level information about the versions within this Template Spec. The keys are the version names. Only populated if the $expand query parameter is set to 'versions'.
  late final pulumi.Output<Map<String, TemplateSpecVersionInfoResponse>> versions;

  /// Creates a new [TemplateSpec].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TemplateSpec]. {@macro pulumi_resources_template_spec_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TemplateSpec(
    String name, {
    TemplateSpecArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:resources:TemplateSpec',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.versions = registerOutput<Map<String, TemplateSpecVersionInfoResponse>>('versions');
  }
}

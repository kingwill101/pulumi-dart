import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_filter_config.dart';
import 'template_state.dart';
import 'template_template_metadata.dart';

/// A `Template` is a resource of Model Armor that lets you configure how Model Armor screens prompts and responses.
/// It functions as sets of customized filters and thresholds for different safety and security confidence levels, allowing control over what content is flagged.
///
///
///
/// ## Example Usage
///
/// ### Modelarmor Template Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_basic = new gcp.modelarmor.Template("template-basic", {
///     location: "<no value>",
///     templateId: "<no value>",
///     filterConfig: {},
///     templateMetadata: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_basic = gcp.modelarmor.Template("template-basic",
///     location="<no value>",
///     template_id="<no value>",
///     filter_config={},
///     template_metadata={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_basic = new Gcp.ModelArmor.Template("template-basic", new()
///     {
///         Location = "<no value>",
///         TemplateId = "<no value>",
///         FilterConfig = null,
///         TemplateMetadata = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/modelarmor"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := modelarmor.NewTemplate(ctx, "template-basic", &modelarmor.TemplateArgs{
/// 			Location:         pulumi.String("<no value>"),
/// 			TemplateId:       pulumi.String("<no value>"),
/// 			FilterConfig:     &modelarmor.TemplateFilterConfigArgs{},
/// 			TemplateMetadata: &modelarmor.TemplateTemplateMetadataArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.modelarmor.Template;
/// import com.pulumi.gcp.modelarmor.TemplateArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateFilterConfigArgs;
/// import com.pulumi.gcp.modelarmor.inputs.TemplateTemplateMetadataArgs;
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
///         var template_basic = new Template("template-basic", TemplateArgs.builder()
///             .location("<no value>")
///             .templateId("<no value>")
///             .filterConfig(TemplateFilterConfigArgs.builder()
///                 .build())
///             .templateMetadata(TemplateTemplateMetadataArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-basic:
///     type: gcp:modelarmor:Template
///     properties:
///       location: <no value>
///       templateId: <no value>
///       filterConfig: {}
///       templateMetadata: {}
/// ```
///
/// ## Import
///
/// Template can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/templates/{{template_id}}`
///
/// * `{{project}}/{{location}}/{{template_id}}`
///
/// * `{{location}}/{{template_id}}`
///
/// When using the `pulumi import` command, Template can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default projects/{{project}}/locations/{{location}}/templates/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default {{project}}/{{location}}/{{template_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:modelarmor/template:Template default {{location}}/{{template_id}}
/// ```
class Template extends pulumi.CustomResource {
  /// Create time stamp
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Filters configuration.
  /// Structure is documented below.
  late final pulumi.Output<TemplateFilterConfig> filterConfig;

  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. name of resource
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// template_id from the method_signature of Create RPC
  late final pulumi.Output<String> templateId;

  /// Message describing TemplateMetadata
  /// Structure is documented below.
  late final pulumi.Output<TemplateTemplateMetadata?> templateMetadata;

  /// Update time stamp
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_modelarmor_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:modelarmor/template:Template',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterConfig = registerOutput<TemplateFilterConfig>('filterConfig');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    templateId = registerOutput<String>('templateId');
    templateMetadata = registerOutput<TemplateTemplateMetadata?>(
      'templateMetadata',
    );
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:modelarmor/template:Template',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    filterConfig = registerOutput<TemplateFilterConfig>('filterConfig');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    templateId = registerOutput<String>('templateId');
    templateMetadata = registerOutput<TemplateTemplateMetadata?>(
      'templateMetadata',
    );
    updateTime = registerOutput<String>('updateTime');
  }
}

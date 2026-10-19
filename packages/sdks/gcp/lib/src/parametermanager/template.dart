import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_args.dart';
import 'template_state.dart';

/// A Template is a logical parameter template.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Template Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_basic = new gcp.parametermanager.Template("template-basic", {templateId: "template"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_basic = gcp.parametermanager.Template("template-basic", template_id="template")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_basic = new Gcp.ParameterManager.Template("template-basic", new()
///     {
///         TemplateId = "template",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewTemplate(ctx, "template-basic", &parametermanager.TemplateArgs{
/// 			TemplateId: pulumi.String("template"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_template" "template-basic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   template_id = "template"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.Template;
/// import com.pulumi.gcp.parametermanager.TemplateArgs;
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
///         var template_basic = new Template("template-basic", TemplateArgs.builder()
///             .templateId("template")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-basic:
///     type: gcp:parametermanager:Template
///     properties:
///       templateId: template
/// ```
///
/// ### Template With Format
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_with_format = new gcp.parametermanager.Template("template-with-format", {
///     templateId: "template",
///     format: "TEMPLATE_FORMAT_JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_with_format = gcp.parametermanager.Template("template-with-format",
///     template_id="template",
///     format="TEMPLATE_FORMAT_JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_with_format = new Gcp.ParameterManager.Template("template-with-format", new()
///     {
///         TemplateId = "template",
///         Format = "TEMPLATE_FORMAT_JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewTemplate(ctx, "template-with-format", &parametermanager.TemplateArgs{
/// 			TemplateId: pulumi.String("template"),
/// 			Format:     pulumi.String("TEMPLATE_FORMAT_JSON"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_template" "template-with-format" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   template_id = "template"
///   format      = "TEMPLATE_FORMAT_JSON"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.Template;
/// import com.pulumi.gcp.parametermanager.TemplateArgs;
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
///         var template_with_format = new Template("template-with-format", TemplateArgs.builder()
///             .templateId("template")
///             .format("TEMPLATE_FORMAT_JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-with-format:
///     type: gcp:parametermanager:Template
///     properties:
///       templateId: template
///       format: TEMPLATE_FORMAT_JSON
/// ```
///
/// ### Template With Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const template_with_labels = new gcp.parametermanager.Template("template-with-labels", {
///     templateId: "template",
///     labels: {
///         key1: "val1",
///         key2: "val2",
///         key3: "val3",
///         key4: "val4",
///         key5: "val5",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// template_with_labels = gcp.parametermanager.Template("template-with-labels",
///     template_id="template",
///     labels={
///         "key1": "val1",
///         "key2": "val2",
///         "key3": "val3",
///         "key4": "val4",
///         "key5": "val5",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var template_with_labels = new Gcp.ParameterManager.Template("template-with-labels", new()
///     {
///         TemplateId = "template",
///         Labels =
///         {
///             { "key1", "val1" },
///             { "key2", "val2" },
///             { "key3", "val3" },
///             { "key4", "val4" },
///             { "key5", "val5" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewTemplate(ctx, "template-with-labels", &parametermanager.TemplateArgs{
/// 			TemplateId: pulumi.String("template"),
/// 			Labels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 				"key2": pulumi.String("val2"),
/// 				"key3": pulumi.String("val3"),
/// 				"key4": pulumi.String("val4"),
/// 				"key5": pulumi.String("val5"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_parametermanager_template" "template-with-labels" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   template_id = "template"
///   labels = {
///     "key1" = "val1"
///     "key2" = "val2"
///     "key3" = "val3"
///     "key4" = "val4"
///     "key5" = "val5"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.parametermanager.Template;
/// import com.pulumi.gcp.parametermanager.TemplateArgs;
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
///         var template_with_labels = new Template("template-with-labels", TemplateArgs.builder()
///             .templateId("template")
///             .labels(Map.ofEntries(
///                 Map.entry("key1", "val1"),
///                 Map.entry("key2", "val2"),
///                 Map.entry("key3", "val3"),
///                 Map.entry("key4", "val4"),
///                 Map.entry("key5", "val5")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template-with-labels:
///     type: gcp:parametermanager:Template
///     properties:
///       templateId: template
///       labels:
///         key1: val1
///         key2: val2
///         key3: val3
///         key4: val4
///         key5: val5
/// ```
///
///
/// ## Import
///
/// Template can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/templates/{{template_id}}`
/// * `{{project}}/{{template_id}}`
/// * `{{template_id}}`
///
///
/// When using the `pulumi import` command, Template can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/template:Template default projects/{{project}}/locations/global/templates/{{template_id}}
/// $ pulumi import gcp:parametermanager/template:Template default {{project}}/{{template_id}}
/// $ pulumi import gcp:parametermanager/template:Template default {{template_id}}
/// ```
class Template extends pulumi.CustomResource {
  /// The time at which the Template was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The format type of the template resource.
  /// Default value is `TEMPLATE_FORMAT_YAML`.
  /// Possible values are: `TEMPLATE_FORMAT_YAML`, `TEMPLATE_FORMAT_JSON`.
  late final pulumi.Output<String?> format;
  /// The labels assigned to this Template.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The resource name of the Template. Format:
  /// `projects/{{project}}/locations/global/templates/{{template_id}}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// This must be unique within the project.
  late final pulumi.Output<String> templateId;
  /// The time at which the Template was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Template].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Template]. {@macro pulumi_parametermanager_template_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Template(
    String name, {
    TemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/template:Template',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    templateId = registerOutput<String>('templateId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Template] resource's state with the given [name] and [id].
  static Template get(
    String name,
    pulumi.Input<String> id, {
    TemplateState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Template._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Template._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/template:Template',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    templateId = registerOutput<String>('templateId');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Template] resource.
  Template.reference(String urn)
    : super(
        'gcp:parametermanager/template:Template',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    format = registerOutput<String?>('format');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    templateId = registerOutput<String>('templateId');
    updateTime = registerOutput<String>('updateTime');
  }
}

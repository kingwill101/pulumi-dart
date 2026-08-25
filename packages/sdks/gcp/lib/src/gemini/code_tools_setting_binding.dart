import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_tools_setting_binding_args.dart';
import 'code_tools_setting_binding_state.dart';

/// The resource for managing CodeTools setting bindings for Admin Control.
///
///
/// To get more information about CodeToolsSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Code Tools Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.CodeToolsSetting("example", {
///     codeToolsSettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     enabledTools: [{
///         handle: "my_handle",
///         tool: "my_tool",
///         accountConnector: "my_con",
///         configs: [{
///             key: "my_key",
///             value: "my_value",
///         }],
///         uriOverride: "my_uri_override",
///     }],
/// });
/// const exampleCodeToolsSettingBinding = new gcp.gemini.CodeToolsSettingBinding("example", {
///     codeToolsSettingId: basic.codeToolsSettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.CodeToolsSetting("example",
///     code_tools_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     enabled_tools=[{
///         "handle": "my_handle",
///         "tool": "my_tool",
///         "account_connector": "my_con",
///         "configs": [{
///             "key": "my_key",
///             "value": "my_value",
///         }],
///         "uri_override": "my_uri_override",
///     }])
/// example_code_tools_setting_binding = gcp.gemini.CodeToolsSettingBinding("example",
///     code_tools_setting_id=basic["codeToolsSettingId"],
///     setting_binding_id="ls-tf1b1",
///     location="global",
///     target="projects/980109375338")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.CodeToolsSetting("example", new()
///     {
///         CodeToolsSettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         EnabledTools = new[]
///         {
///             new Gcp.Gemini.Inputs.CodeToolsSettingEnabledToolArgs
///             {
///                 Handle = "my_handle",
///                 Tool = "my_tool",
///                 AccountConnector = "my_con",
///                 Configs = new[]
///                 {
///                     new Gcp.Gemini.Inputs.CodeToolsSettingEnabledToolConfigArgs
///                     {
///                         Key = "my_key",
///                         Value = "my_value",
///                     },
///                 },
///                 UriOverride = "my_uri_override",
///             },
///         },
///     });
///
///     var exampleCodeToolsSettingBinding = new Gcp.Gemini.CodeToolsSettingBinding("example", new()
///     {
///         CodeToolsSettingId = basic.CodeToolsSettingId,
///         SettingBindingId = "ls-tf1b1",
///         Location = "global",
///         Target = "projects/980109375338",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gemini.NewCodeToolsSetting(ctx, "example", &gemini.CodeToolsSettingArgs{
/// 			CodeToolsSettingId: pulumi.String("ls-tf1"),
/// 			Location:           pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			EnabledTools: gemini.CodeToolsSettingEnabledToolArray{
/// 				&gemini.CodeToolsSettingEnabledToolArgs{
/// 					Handle:           pulumi.String("my_handle"),
/// 					Tool:             pulumi.String("my_tool"),
/// 					AccountConnector: pulumi.String("my_con"),
/// 					Configs: gemini.CodeToolsSettingEnabledToolConfigArray{
/// 						&gemini.CodeToolsSettingEnabledToolConfigArgs{
/// 							Key:   pulumi.String("my_key"),
/// 							Value: pulumi.String("my_value"),
/// 						},
/// 					},
/// 					UriOverride: pulumi.String("my_uri_override"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewCodeToolsSettingBinding(ctx, "example", &gemini.CodeToolsSettingBindingArgs{
/// 			CodeToolsSettingId: pulumi.Any(basic.CodeToolsSettingId),
/// 			SettingBindingId:   pulumi.String("ls-tf1b1"),
/// 			Location:           pulumi.String("global"),
/// 			Target:             pulumi.String("projects/980109375338"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gemini_codetoolssetting" "example" {
///   code_tools_setting_id = "ls-tf1"
///   location              = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   enabled_tools {
///     handle            = "my_handle"
///     tool              = "my_tool"
///     account_connector = "my_con"
///     configs {
///       key   = "my_key"
///       value = "my_value"
///     }
///     uri_override = "my_uri_override"
///   }
/// }
/// resource "gcp_gemini_codetoolssettingbinding" "example" {
///   code_tools_setting_id = basic.codeToolsSettingId
///   setting_binding_id    = "ls-tf1b1"
///   location              = "global"
///   target                = "projects/980109375338"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.CodeToolsSetting;
/// import com.pulumi.gcp.gemini.CodeToolsSettingArgs;
/// import com.pulumi.gcp.gemini.inputs.CodeToolsSettingEnabledToolArgs;
/// import com.pulumi.gcp.gemini.inputs.CodeToolsSettingEnabledToolConfigArgs;
/// import com.pulumi.gcp.gemini.CodeToolsSettingBinding;
/// import com.pulumi.gcp.gemini.CodeToolsSettingBindingArgs;
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
///         var example = new CodeToolsSetting("example", CodeToolsSettingArgs.builder()
///             .codeToolsSettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .enabledTools(CodeToolsSettingEnabledToolArgs.builder()
///                 .handle("my_handle")
///                 .tool("my_tool")
///                 .accountConnector("my_con")
///                 .configs(CodeToolsSettingEnabledToolConfigArgs.builder()
///                     .key("my_key")
///                     .value("my_value")
///                     .build())
///                 .uriOverride("my_uri_override")
///                 .build())
///             .build());
///
///         var exampleCodeToolsSettingBinding = new CodeToolsSettingBinding("exampleCodeToolsSettingBinding", CodeToolsSettingBindingArgs.builder()
///             .codeToolsSettingId(basic.get("codeToolsSettingId"))
///             .settingBindingId("ls-tf1b1")
///             .location("global")
///             .target("projects/980109375338")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:CodeToolsSetting
///     properties:
///       codeToolsSettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       enabledTools:
///         - handle: my_handle
///           tool: my_tool
///           accountConnector: my_con
///           configs:
///             - key: my_key
///               value: my_value
///           uriOverride: my_uri_override
///   exampleCodeToolsSettingBinding:
///     type: gcp:gemini:CodeToolsSettingBinding
///     name: example
///     properties:
///       codeToolsSettingId: ${basic.codeToolsSettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/980109375338
/// ```
///
///
/// ## Import
///
/// CodeToolsSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, CodeToolsSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default projects/{{project}}/locations/{{location}}/codeToolsSettings/{{code_tools_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default {{project}}/{{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding default {{location}}/{{code_tools_setting_id}}/{{setting_binding_id}}
/// ```
class CodeToolsSettingBinding extends pulumi.CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> codeToolsSettingId;
  /// Create time stamp.
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
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/codeToolsSettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CODE_ASSIST`.
  late final pulumi.Output<String> product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Id of the setting binding.
  late final pulumi.Output<String> settingBindingId;
  /// Target of the binding.
  late final pulumi.Output<String> target;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [CodeToolsSettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CodeToolsSettingBinding]. {@macro pulumi_gemini_code_tools_setting_binding_code_tools_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CodeToolsSettingBinding(
    String name, {
    CodeToolsSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    codeToolsSettingId = registerOutput<String>('codeToolsSettingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settingBindingId = registerOutput<String>('settingBindingId');
    target = registerOutput<String>('target');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [CodeToolsSettingBinding] resource's state with the given [name] and [id].
  static CodeToolsSettingBinding get(
    String name,
    pulumi.Input<String> id, {
    CodeToolsSettingBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CodeToolsSettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CodeToolsSettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    codeToolsSettingId = registerOutput<String>('codeToolsSettingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settingBindingId = registerOutput<String>('settingBindingId');
    target = registerOutput<String>('target');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [CodeToolsSettingBinding] resource.
  CodeToolsSettingBinding.reference(String urn)
    : super(
        'gcp:gemini/codeToolsSettingBinding:CodeToolsSettingBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    codeToolsSettingId = registerOutput<String>('codeToolsSettingId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    settingBindingId = registerOutput<String>('settingBindingId');
    target = registerOutput<String>('target');
    updateTime = registerOutput<String>('updateTime');
  }
}

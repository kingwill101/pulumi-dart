import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_setting_binding_args.dart';
import 'logging_setting_binding_state.dart';

/// The resource for managing Logging setting bindings for Admin Control.
///
///
/// To get more information about LoggingSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Logging Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.LoggingSetting("basic", {
///     loggingSettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     logPromptsAndResponses: true,
/// });
/// const example = new gcp.gemini.LoggingSettingBinding("example", {
///     loggingSettingId: basic.loggingSettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.LoggingSetting("basic",
///     logging_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     log_prompts_and_responses=True)
/// example = gcp.gemini.LoggingSettingBinding("example",
///     logging_setting_id=basic.logging_setting_id,
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
///     var basic = new Gcp.Gemini.LoggingSetting("basic", new()
///     {
///         LoggingSettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         LogPromptsAndResponses = true,
///     });
///
///     var example = new Gcp.Gemini.LoggingSettingBinding("example", new()
///     {
///         LoggingSettingId = basic.LoggingSettingId,
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
/// 		basic, err := gemini.NewLoggingSetting(ctx, "basic", &gemini.LoggingSettingArgs{
/// 			LoggingSettingId: pulumi.String("ls-tf1"),
/// 			Location:         pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			LogPromptsAndResponses: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewLoggingSettingBinding(ctx, "example", &gemini.LoggingSettingBindingArgs{
/// 			LoggingSettingId: basic.LoggingSettingId,
/// 			SettingBindingId: pulumi.String("ls-tf1b1"),
/// 			Location:         pulumi.String("global"),
/// 			Target:           pulumi.String("projects/980109375338"),
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
/// import com.pulumi.gcp.gemini.LoggingSetting;
/// import com.pulumi.gcp.gemini.LoggingSettingArgs;
/// import com.pulumi.gcp.gemini.LoggingSettingBinding;
/// import com.pulumi.gcp.gemini.LoggingSettingBindingArgs;
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
///         var basic = new LoggingSetting("basic", LoggingSettingArgs.builder()
///             .loggingSettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .logPromptsAndResponses(true)
///             .build());
///
///         var example = new LoggingSettingBinding("example", LoggingSettingBindingArgs.builder()
///             .loggingSettingId(basic.loggingSettingId())
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
///   basic:
///     type: gcp:gemini:LoggingSetting
///     properties:
///       loggingSettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       logPromptsAndResponses: true
///   example:
///     type: gcp:gemini:LoggingSettingBinding
///     properties:
///       loggingSettingId: ${basic.loggingSettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/980109375338
/// ```
///
///
/// ## Import
///
/// LoggingSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}/settingBindings/{{setting_binding_id}}`
///
/// * `{{project}}/{{location}}/{{logging_setting_id}}/{{setting_binding_id}}`
///
/// * `{{location}}/{{logging_setting_id}}/{{setting_binding_id}}`
///
/// When using the `pulumi import` command, LoggingSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}/settingBindings/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default {{project}}/{{location}}/{{logging_setting_id}}/{{setting_binding_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSettingBinding:LoggingSettingBinding default {{location}}/{{logging_setting_id}}/{{setting_binding_id}}
/// ```
class LoggingSettingBinding extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> loggingSettingId;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingSettings/{setting}/settingBindings/{setting_binding}
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

  /// Creates a new [LoggingSettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoggingSettingBinding]. {@macro pulumi_gemini_logging_setting_binding_logging_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoggingSettingBinding(
    String name, {
    LoggingSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSettingBinding:LoggingSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    this.product = registerOutput<String>('product');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.settingBindingId = registerOutput<String>('settingBindingId');
    this.target = registerOutput<String>('target');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [LoggingSettingBinding] resource's state with the given [name] and [id].
  static LoggingSettingBinding get(
    String name,
    pulumi.Input<String> id, {
    LoggingSettingBindingState? state,
  }) {
    return LoggingSettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoggingSettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSettingBinding:LoggingSettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    this.product = registerOutput<String>('product');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.settingBindingId = registerOutput<String>('settingBindingId');
    this.target = registerOutput<String>('target');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

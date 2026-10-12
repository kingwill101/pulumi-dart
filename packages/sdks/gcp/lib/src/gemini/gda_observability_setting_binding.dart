import 'package:pulumi/pulumi.dart' as pulumi;
import 'gda_observability_setting_binding_args.dart';
import 'gda_observability_setting_binding_state.dart';

/// The resource for managing GdaObservability setting bindings for Admin Control.
///
///
/// To get more information about GdaObservabilitySettingBinding, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.gdaObservabilitySettings.settingBindings)
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Gda Observability Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.GdaObservabilitySetting("basic", {
///     gdaObservabilitySettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     conversationalAnalyticsSetting: {
///         loggingEnabled: true,
///         tracesEnabled: true,
///         metricsEnabled: true,
///         feedbackEnabled: true,
///     },
/// });
/// const example = new gcp.gemini.GdaObservabilitySettingBinding("example", {
///     gdaObservabilitySettingId: basic.gdaObservabilitySettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/1234567890",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.GdaObservabilitySetting("basic",
///     gda_observability_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     conversational_analytics_setting={
///         "logging_enabled": True,
///         "traces_enabled": True,
///         "metrics_enabled": True,
///         "feedback_enabled": True,
///     })
/// example = gcp.gemini.GdaObservabilitySettingBinding("example",
///     gda_observability_setting_id=basic.gda_observability_setting_id,
///     setting_binding_id="ls-tf1b1",
///     location="global",
///     target="projects/1234567890")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basic = new Gcp.Gemini.GdaObservabilitySetting("basic", new()
///     {
///         GdaObservabilitySettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         ConversationalAnalyticsSetting = new Gcp.Gemini.Inputs.GdaObservabilitySettingConversationalAnalyticsSettingArgs
///         {
///             LoggingEnabled = true,
///             TracesEnabled = true,
///             MetricsEnabled = true,
///             FeedbackEnabled = true,
///         },
///     });
///
///     var example = new Gcp.Gemini.GdaObservabilitySettingBinding("example", new()
///     {
///         GdaObservabilitySettingId = basic.GdaObservabilitySettingId,
///         SettingBindingId = "ls-tf1b1",
///         Location = "global",
///         Target = "projects/1234567890",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basic, err := gemini.NewGdaObservabilitySetting(ctx, "basic", &gemini.GdaObservabilitySettingArgs{
/// 			GdaObservabilitySettingId: pulumi.String("ls-tf1"),
/// 			Location:                  pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			ConversationalAnalyticsSetting: &gemini.GdaObservabilitySettingConversationalAnalyticsSettingArgs{
/// 				LoggingEnabled:  pulumi.Bool(true),
/// 				TracesEnabled:   pulumi.Bool(true),
/// 				MetricsEnabled:  pulumi.Bool(true),
/// 				FeedbackEnabled: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewGdaObservabilitySettingBinding(ctx, "example", &gemini.GdaObservabilitySettingBindingArgs{
/// 			GdaObservabilitySettingId: basic.GdaObservabilitySettingId,
/// 			SettingBindingId:          pulumi.String("ls-tf1b1"),
/// 			Location:                  pulumi.String("global"),
/// 			Target:                    pulumi.String("projects/1234567890"),
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
/// resource "gcp_gemini_gdaobservabilitysetting" "basic" {
///   gda_observability_setting_id = "ls-tf1"
///   location                     = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   conversational_analytics_setting = {
///     logging_enabled  = true
///     traces_enabled   = true
///     metrics_enabled  = true
///     feedback_enabled = true
///   }
/// }
/// resource "gcp_gemini_gdaobservabilitysettingbinding" "example" {
///   gda_observability_setting_id = gcp_gemini_gdaobservabilitysetting.basic.gda_observability_setting_id
///   setting_binding_id           = "ls-tf1b1"
///   location                     = "global"
///   target                       = "projects/1234567890"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.GdaObservabilitySetting;
/// import com.pulumi.gcp.gemini.GdaObservabilitySettingArgs;
/// import com.pulumi.gcp.gemini.inputs.GdaObservabilitySettingConversationalAnalyticsSettingArgs;
/// import com.pulumi.gcp.gemini.GdaObservabilitySettingBinding;
/// import com.pulumi.gcp.gemini.GdaObservabilitySettingBindingArgs;
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
///         var basic = new GdaObservabilitySetting("basic", GdaObservabilitySettingArgs.builder()
///             .gdaObservabilitySettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .conversationalAnalyticsSetting(GdaObservabilitySettingConversationalAnalyticsSettingArgs.builder()
///                 .loggingEnabled(true)
///                 .tracesEnabled(true)
///                 .metricsEnabled(true)
///                 .feedbackEnabled(true)
///                 .build())
///             .build());
///
///         var example = new GdaObservabilitySettingBinding("example", GdaObservabilitySettingBindingArgs.builder()
///             .gdaObservabilitySettingId(basic.gdaObservabilitySettingId())
///             .settingBindingId("ls-tf1b1")
///             .location("global")
///             .target("projects/1234567890")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:gemini:GdaObservabilitySetting
///     properties:
///       gdaObservabilitySettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       conversationalAnalyticsSetting:
///         loggingEnabled: true
///         tracesEnabled: true
///         metricsEnabled: true
///         feedbackEnabled: true
///   example:
///     type: gcp:gemini:GdaObservabilitySettingBinding
///     properties:
///       gdaObservabilitySettingId: ${basic.gdaObservabilitySettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/1234567890
/// ```
///
///
/// ## Import
///
/// GdaObservabilitySettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gdaObservabilitySettings/{{gda_observability_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{gda_observability_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{gda_observability_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, GdaObservabilitySettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding default projects/{{project}}/locations/{{location}}/gdaObservabilitySettings/{{gda_observability_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding default {{project}}/{{location}}/{{gda_observability_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding default {{location}}/{{gda_observability_setting_id}}/{{setting_binding_id}}
/// ```
class GdaObservabilitySettingBinding extends pulumi.CustomResource {
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
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> gdaObservabilitySettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/gdaObservabilitySettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding. Values include GEMINI_IN_LOOKER. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.gdaObservabilitySettings.settingBindings) for a complete list.
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

  /// Creates a new [GdaObservabilitySettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GdaObservabilitySettingBinding]. {@macro pulumi_gemini_gda_observability_setting_binding_gda_observability_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GdaObservabilitySettingBinding(
    String name, {
    GdaObservabilitySettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
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

  /// Gets an existing [GdaObservabilitySettingBinding] resource's state with the given [name] and [id].
  static GdaObservabilitySettingBinding get(
    String name,
    pulumi.Input<String> id, {
    GdaObservabilitySettingBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GdaObservabilitySettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GdaObservabilitySettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
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

  /// Creates a typed reference to an existing [GdaObservabilitySettingBinding] resource.
  GdaObservabilitySettingBinding.reference(String urn)
    : super(
        'gcp:gemini/gdaObservabilitySettingBinding:GdaObservabilitySettingBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
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

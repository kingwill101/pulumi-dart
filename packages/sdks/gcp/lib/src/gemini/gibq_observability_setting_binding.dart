import 'package:pulumi/pulumi.dart' as pulumi;
import 'gibq_observability_setting_binding_args.dart';
import 'gibq_observability_setting_binding_state.dart';

/// The resource for managing GibqObservabilitySetting setting bindings for Admin Control.
///
///
/// To get more information about GibqObservabilitySettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Gibq Observability Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const basic = new gcp.gemini.GibqObservabilitySetting("basic", {
///     gibqObservabilitySettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     conversationalAnalyticsSetting: {
///         metricsEnabled: true,
///         tracesEnabled: true,
///         feedbackEnabled: true,
///         loggingEnabled: true,
///     },
/// });
/// const example = new gcp.gemini.GibqObservabilitySettingBinding("example", {
///     gibqObservabilitySettingId: basic.gibqObservabilitySettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: project.then(project => `projects/${project.number}`),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// basic = gcp.gemini.GibqObservabilitySetting("basic",
///     gibq_observability_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     conversational_analytics_setting={
///         "metrics_enabled": True,
///         "traces_enabled": True,
///         "feedback_enabled": True,
///         "logging_enabled": True,
///     })
/// example = gcp.gemini.GibqObservabilitySettingBinding("example",
///     gibq_observability_setting_id=basic.gibq_observability_setting_id,
///     setting_binding_id="ls-tf1b1",
///     location="global",
///     target=f"projects/{project.number}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var basic = new Gcp.Gemini.GibqObservabilitySetting("basic", new()
///     {
///         GibqObservabilitySettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         ConversationalAnalyticsSetting = new Gcp.Gemini.Inputs.GibqObservabilitySettingConversationalAnalyticsSettingArgs
///         {
///             MetricsEnabled = true,
///             TracesEnabled = true,
///             FeedbackEnabled = true,
///             LoggingEnabled = true,
///         },
///     });
///
///     var example = new Gcp.Gemini.GibqObservabilitySettingBinding("example", new()
///     {
///         GibqObservabilitySettingId = basic.GibqObservabilitySettingId,
///         SettingBindingId = "ls-tf1b1",
///         Location = "global",
///         Target = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/gemini"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := gemini.NewGibqObservabilitySetting(ctx, "basic", &gemini.GibqObservabilitySettingArgs{
/// 			GibqObservabilitySettingId: pulumi.String("ls-tf1"),
/// 			Location:                   pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			ConversationalAnalyticsSetting: &gemini.GibqObservabilitySettingConversationalAnalyticsSettingArgs{
/// 				MetricsEnabled:  pulumi.Bool(true),
/// 				TracesEnabled:   pulumi.Bool(true),
/// 				FeedbackEnabled: pulumi.Bool(true),
/// 				LoggingEnabled:  pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewGibqObservabilitySettingBinding(ctx, "example", &gemini.GibqObservabilitySettingBindingArgs{
/// 			GibqObservabilitySettingId: basic.GibqObservabilitySettingId,
/// 			SettingBindingId:           pulumi.String("ls-tf1b1"),
/// 			Location:                   pulumi.String("global"),
/// 			Target:                     pulumi.Sprintf("projects/%v", project.Number),
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_gemini_gibq_observability_setting" "basic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   gibq_observability_setting_id = "ls-tf1"
///   location                      = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   conversational_analytics_setting = {
///     metrics_enabled  = true
///     traces_enabled   = true
///     feedback_enabled = true
///     logging_enabled  = true
///   }
/// }
/// resource "gcp_gemini_gibq_observability_setting_binding" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   gibq_observability_setting_id = gcp_gemini_gibq_observability_setting.basic.gibq_observability_setting_id
///   setting_binding_id            = "ls-tf1b1"
///   location                      = "global"
///   target                        ="projects/${data.gcp_organizations_project.project.number}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.gemini.GibqObservabilitySetting;
/// import com.pulumi.gcp.gemini.GibqObservabilitySettingArgs;
/// import com.pulumi.gcp.gemini.inputs.GibqObservabilitySettingConversationalAnalyticsSettingArgs;
/// import com.pulumi.gcp.gemini.GibqObservabilitySettingBinding;
/// import com.pulumi.gcp.gemini.GibqObservabilitySettingBindingArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var basic = new GibqObservabilitySetting("basic", GibqObservabilitySettingArgs.builder()
///             .gibqObservabilitySettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .conversationalAnalyticsSetting(GibqObservabilitySettingConversationalAnalyticsSettingArgs.builder()
///                 .metricsEnabled(true)
///                 .tracesEnabled(true)
///                 .feedbackEnabled(true)
///                 .loggingEnabled(true)
///                 .build())
///             .build());
///
///         var example = new GibqObservabilitySettingBinding("example", GibqObservabilitySettingBindingArgs.builder()
///             .gibqObservabilitySettingId(basic.gibqObservabilitySettingId())
///             .settingBindingId("ls-tf1b1")
///             .location("global")
///             .target(String.format("projects/%s", project.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basic:
///     type: gcp:gemini:GibqObservabilitySetting
///     properties:
///       gibqObservabilitySettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       conversationalAnalyticsSetting:
///         metricsEnabled: true
///         tracesEnabled: true
///         feedbackEnabled: true
///         loggingEnabled: true
///   example:
///     type: gcp:gemini:GibqObservabilitySettingBinding
///     properties:
///       gibqObservabilitySettingId: ${basic.gibqObservabilitySettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/${project.number}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// GibqObservabilitySettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gibqObservabilitySettings/{{gibq_observability_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{gibq_observability_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{gibq_observability_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, GibqObservabilitySettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding default projects/{{project}}/locations/{{location}}/gibqObservabilitySettings/{{gibq_observability_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding default {{project}}/{{location}}/{{gibq_observability_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding default {{location}}/{{gibq_observability_setting_id}}/{{setting_binding_id}}
/// ```
class GibqObservabilitySettingBinding extends pulumi.CustomResource {
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
  late final pulumi.Output<String> gibqObservabilitySettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/gibqObservabilitySettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.gibqObservabilitySettings.settingBindings) for a complete list.
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

  /// Creates a new [GibqObservabilitySettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GibqObservabilitySettingBinding]. {@macro pulumi_gemini_gibq_observability_setting_binding_gibq_observability_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GibqObservabilitySettingBinding(
    String name, {
    GibqObservabilitySettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
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

  /// Gets an existing [GibqObservabilitySettingBinding] resource's state with the given [name] and [id].
  static GibqObservabilitySettingBinding get(
    String name,
    pulumi.Input<String> id, {
    GibqObservabilitySettingBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GibqObservabilitySettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GibqObservabilitySettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
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

  /// Creates a typed reference to an existing [GibqObservabilitySettingBinding] resource.
  GibqObservabilitySettingBinding.reference(String urn)
    : super(
        'gcp:gemini/gibqObservabilitySettingBinding:GibqObservabilitySettingBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
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

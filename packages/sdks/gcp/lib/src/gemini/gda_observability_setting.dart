import 'package:pulumi/pulumi.dart' as pulumi;
import 'gda_observability_setting_args.dart';
import 'gda_observability_setting_conversational_analytics_setting.dart';
import 'gda_observability_setting_state.dart';

/// The resource for managing GdaObservability settings for Admin Control.
///
///
/// To get more information about GdaObservabilitySetting, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.gdaObservabilitySettings)
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Gda Observability Setting Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.GdaObservabilitySetting("example", {
///     gdaObservabilitySettingId: "ls1-tf",
///     location: "global",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.GdaObservabilitySetting("example",
///     gda_observability_setting_id="ls1-tf",
///     location="global")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.GdaObservabilitySetting("example", new()
///     {
///         GdaObservabilitySettingId = "ls1-tf",
///         Location = "global",
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
/// 		_, err := gemini.NewGdaObservabilitySetting(ctx, "example", &gemini.GdaObservabilitySettingArgs{
/// 			GdaObservabilitySettingId: pulumi.String("ls1-tf"),
/// 			Location:                  pulumi.String("global"),
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
/// resource "gcp_gemini_gdaobservabilitysetting" "example" {
///   gda_observability_setting_id = "ls1-tf"
///   location                     = "global"
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
///         var example = new GdaObservabilitySetting("example", GdaObservabilitySettingArgs.builder()
///             .gdaObservabilitySettingId("ls1-tf")
///             .location("global")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:GdaObservabilitySetting
///     properties:
///       gdaObservabilitySettingId: ls1-tf
///       location: global
/// ```
///
/// ### Gemini Gda Observability Setting Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.GdaObservabilitySetting("example", {
///     gdaObservabilitySettingId: "ls1-tf",
///     location: "global",
///     labels: {
///         initial_key: "initial_value",
///     },
///     conversationalAnalyticsSetting: {
///         feedbackEnabled: false,
///         loggingEnabled: false,
///         metricsEnabled: false,
///         tracesEnabled: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.GdaObservabilitySetting("example",
///     gda_observability_setting_id="ls1-tf",
///     location="global",
///     labels={
///         "initial_key": "initial_value",
///     },
///     conversational_analytics_setting={
///         "feedback_enabled": False,
///         "logging_enabled": False,
///         "metrics_enabled": False,
///         "traces_enabled": False,
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
///     var example = new Gcp.Gemini.GdaObservabilitySetting("example", new()
///     {
///         GdaObservabilitySettingId = "ls1-tf",
///         Location = "global",
///         Labels =
///         {
///             { "initial_key", "initial_value" },
///         },
///         ConversationalAnalyticsSetting = new Gcp.Gemini.Inputs.GdaObservabilitySettingConversationalAnalyticsSettingArgs
///         {
///             FeedbackEnabled = false,
///             LoggingEnabled = false,
///             MetricsEnabled = false,
///             TracesEnabled = false,
///         },
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
/// 		_, err := gemini.NewGdaObservabilitySetting(ctx, "example", &gemini.GdaObservabilitySettingArgs{
/// 			GdaObservabilitySettingId: pulumi.String("ls1-tf"),
/// 			Location:                  pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"initial_key": pulumi.String("initial_value"),
/// 			},
/// 			ConversationalAnalyticsSetting: &gemini.GdaObservabilitySettingConversationalAnalyticsSettingArgs{
/// 				FeedbackEnabled: pulumi.Bool(false),
/// 				LoggingEnabled:  pulumi.Bool(false),
/// 				MetricsEnabled:  pulumi.Bool(false),
/// 				TracesEnabled:   pulumi.Bool(false),
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
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gemini_gdaobservabilitysetting" "example" {
///   gda_observability_setting_id = "ls1-tf"
///   location                     = "global"
///   labels = {
///     "initial_key" = "initial_value"
///   }
///   conversational_analytics_setting = {
///     feedback_enabled = false
///     logging_enabled  = false
///     metrics_enabled  = false
///     traces_enabled   = false
///   }
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
///         var example = new GdaObservabilitySetting("example", GdaObservabilitySettingArgs.builder()
///             .gdaObservabilitySettingId("ls1-tf")
///             .location("global")
///             .labels(Map.of("initial_key", "initial_value"))
///             .conversationalAnalyticsSetting(GdaObservabilitySettingConversationalAnalyticsSettingArgs.builder()
///                 .feedbackEnabled(false)
///                 .loggingEnabled(false)
///                 .metricsEnabled(false)
///                 .tracesEnabled(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:GdaObservabilitySetting
///     properties:
///       gdaObservabilitySettingId: ls1-tf
///       location: global
///       labels:
///         initial_key: initial_value
///       conversationalAnalyticsSetting:
///         feedbackEnabled: false
///         loggingEnabled: false
///         metricsEnabled: false
///         tracesEnabled: false
/// ```
///
///
/// ## Import
///
/// GdaObservabilitySetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gdaObservabilitySettings/{{gda_observability_setting_id}}`
/// * `{{project}}/{{location}}/{{gda_observability_setting_id}}`
/// * `{{location}}/{{gda_observability_setting_id}}`
///
///
/// When using the `pulumi import` command, GdaObservabilitySetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting default projects/{{project}}/locations/{{location}}/gdaObservabilitySettings/{{gda_observability_setting_id}}
/// $ pulumi import gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting default {{project}}/{{location}}/{{gda_observability_setting_id}}
/// $ pulumi import gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting default {{location}}/{{gda_observability_setting_id}}
/// ```
class GdaObservabilitySetting extends pulumi.CustomResource {
  /// Message describing Setting for Conversational Analytics.
  /// Structure is documented below.
  late final pulumi.Output<GdaObservabilitySettingConversationalAnalyticsSetting?> conversationalAnalyticsSetting;
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
  /// Id of the Gda Observability Setting.
  late final pulumi.Output<String> gdaObservabilitySettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/gdaObservabilitySettings/{gdaObservabilitySetting}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GdaObservabilitySetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GdaObservabilitySetting]. {@macro pulumi_gemini_gda_observability_setting_gda_observability_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GdaObservabilitySetting(
    String name, {
    GdaObservabilitySettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    conversationalAnalyticsSetting = registerOutput<GdaObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GdaObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GdaObservabilitySetting] resource's state with the given [name] and [id].
  static GdaObservabilitySetting get(
    String name,
    pulumi.Input<String> id, {
    GdaObservabilitySettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GdaObservabilitySetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GdaObservabilitySetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    conversationalAnalyticsSetting = registerOutput<GdaObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GdaObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [GdaObservabilitySetting] resource.
  GdaObservabilitySetting.reference(String urn)
    : super(
        'gcp:gemini/gdaObservabilitySetting:GdaObservabilitySetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    conversationalAnalyticsSetting = registerOutput<GdaObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GdaObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gdaObservabilitySettingId = registerOutput<String>('gdaObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}

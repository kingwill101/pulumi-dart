import 'package:pulumi/pulumi.dart' as pulumi;
import 'gibq_observability_setting_args.dart';
import 'gibq_observability_setting_conversational_analytics_setting.dart';
import 'gibq_observability_setting_state.dart';

/// A setting that controls observability features for Gemini in BigQuery.
///
///
/// To get more information about GibqObservabilitySetting, see:
///
/// * [API documentation](https://cloud.google.com/gemini/docs/reference/rest/v1/projects.locations.gibqObservabilitySettings)
/// * How-to Guides
/// * [Gemini in BigQuery overview](https://cloud.google.com/gemini/docs/bigquery/overview)
///
/// ## Example Usage
///
/// ### Gemini Gibq Observability Setting Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.GibqObservabilitySetting("example", {
///     gibqObservabilitySettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     conversationalAnalyticsSetting: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.GibqObservabilitySetting("example",
///     gibq_observability_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     conversational_analytics_setting={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.GibqObservabilitySetting("example", new()
///     {
///         GibqObservabilitySettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         ConversationalAnalyticsSetting = new() { },
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
/// 		_, err := gemini.NewGibqObservabilitySetting(ctx, "example", &gemini.GibqObservabilitySettingArgs{
/// 			GibqObservabilitySettingId: pulumi.String("ls-tf1"),
/// 			Location:                   pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			ConversationalAnalyticsSetting: &gemini.GibqObservabilitySettingConversationalAnalyticsSettingArgs{},
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
/// resource "gcp_gemini_gibqobservabilitysetting" "example" {
///   gibq_observability_setting_id = "ls-tf1"
///   location                      = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   conversational_analytics_setting = {}
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.GibqObservabilitySetting;
/// import com.pulumi.gcp.gemini.GibqObservabilitySettingArgs;
/// import com.pulumi.gcp.gemini.inputs.GibqObservabilitySettingConversationalAnalyticsSettingArgs;
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
///         var example = new GibqObservabilitySetting("example", GibqObservabilitySettingArgs.builder()
///             .gibqObservabilitySettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .conversationalAnalyticsSetting(GibqObservabilitySettingConversationalAnalyticsSettingArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:GibqObservabilitySetting
///     properties:
///       gibqObservabilitySettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       conversationalAnalyticsSetting: {}
/// ```
///
///
/// ## Import
///
/// GibqObservabilitySetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gibqObservabilitySettings/{{gibq_observability_setting_id}}`
/// * `{{project}}/{{location}}/{{gibq_observability_setting_id}}`
/// * `{{location}}/{{gibq_observability_setting_id}}`
///
///
/// When using the `pulumi import` command, GibqObservabilitySetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting default projects/{{project}}/locations/{{location}}/gibqObservabilitySettings/{{gibq_observability_setting_id}}
/// $ pulumi import gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting default {{project}}/{{location}}/{{gibq_observability_setting_id}}
/// $ pulumi import gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting default {{location}}/{{gibq_observability_setting_id}}
/// ```
class GibqObservabilitySetting extends pulumi.CustomResource {
  /// Settings for Conversational Analytics, which can be used to enable observability features.
  /// Structure is documented below.
  late final pulumi.Output<GibqObservabilitySettingConversationalAnalyticsSetting?> conversationalAnalyticsSetting;
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
  /// Id of the requesting object.
  late final pulumi.Output<String> gibqObservabilitySettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/gibqObservabilitySettings/{gibq_observability_setting}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GibqObservabilitySetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GibqObservabilitySetting]. {@macro pulumi_gemini_gibq_observability_setting_gibq_observability_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GibqObservabilitySetting(
    String name, {
    GibqObservabilitySettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    conversationalAnalyticsSetting = registerOutput<GibqObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GibqObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GibqObservabilitySetting] resource's state with the given [name] and [id].
  static GibqObservabilitySetting get(
    String name,
    pulumi.Input<String> id, {
    GibqObservabilitySettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GibqObservabilitySetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GibqObservabilitySetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    conversationalAnalyticsSetting = registerOutput<GibqObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GibqObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [GibqObservabilitySetting] resource.
  GibqObservabilitySetting.reference(String urn)
    : super(
        'gcp:gemini/gibqObservabilitySetting:GibqObservabilitySetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    conversationalAnalyticsSetting = registerOutput<GibqObservabilitySettingConversationalAnalyticsSetting?>('conversationalAnalyticsSetting', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GibqObservabilitySettingConversationalAnalyticsSetting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    gibqObservabilitySettingId = registerOutput<String>('gibqObservabilitySettingId');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}

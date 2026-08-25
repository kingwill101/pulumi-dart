import 'package:pulumi/pulumi.dart' as pulumi;
import 'gemini_gcp_enablement_setting_binding_args.dart';
import 'gemini_gcp_enablement_setting_binding_state.dart';

/// The resource for managing GeminiGcpEnablementSetting setting bindings for Admin Control.
///
///
/// To get more information about GeminiGcpEnablementSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Gemini Gcp Enablement Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.GeminiGcpEnablementSetting("basic", {
///     geminiGcpEnablementSettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     enableCustomerDataSharing: true,
///     webGroundingType: "WEB_GROUNDING_FOR_ENTERPRISE",
/// });
/// const example = new gcp.gemini.GeminiGcpEnablementSettingBinding("example", {
///     geminiGcpEnablementSettingId: basic.geminiGcpEnablementSettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.GeminiGcpEnablementSetting("basic",
///     gemini_gcp_enablement_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     enable_customer_data_sharing=True,
///     web_grounding_type="WEB_GROUNDING_FOR_ENTERPRISE")
/// example = gcp.gemini.GeminiGcpEnablementSettingBinding("example",
///     gemini_gcp_enablement_setting_id=basic.gemini_gcp_enablement_setting_id,
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
///     var basic = new Gcp.Gemini.GeminiGcpEnablementSetting("basic", new()
///     {
///         GeminiGcpEnablementSettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         EnableCustomerDataSharing = true,
///         WebGroundingType = "WEB_GROUNDING_FOR_ENTERPRISE",
///     });
///
///     var example = new Gcp.Gemini.GeminiGcpEnablementSettingBinding("example", new()
///     {
///         GeminiGcpEnablementSettingId = basic.GeminiGcpEnablementSettingId,
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
/// 		basic, err := gemini.NewGeminiGcpEnablementSetting(ctx, "basic", &gemini.GeminiGcpEnablementSettingArgs{
/// 			GeminiGcpEnablementSettingId: pulumi.String("ls-tf1"),
/// 			Location:                     pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			EnableCustomerDataSharing: pulumi.Bool(true),
/// 			WebGroundingType:          pulumi.String("WEB_GROUNDING_FOR_ENTERPRISE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewGeminiGcpEnablementSettingBinding(ctx, "example", &gemini.GeminiGcpEnablementSettingBindingArgs{
/// 			GeminiGcpEnablementSettingId: basic.GeminiGcpEnablementSettingId,
/// 			SettingBindingId:             pulumi.String("ls-tf1b1"),
/// 			Location:                     pulumi.String("global"),
/// 			Target:                       pulumi.String("projects/980109375338"),
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
/// resource "gcp_gemini_geminigcpenablementsetting" "basic" {
///   gemini_gcp_enablement_setting_id = "ls-tf1"
///   location                         = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   enable_customer_data_sharing = true
///   web_grounding_type           = "WEB_GROUNDING_FOR_ENTERPRISE"
/// }
/// resource "gcp_gemini_geminigcpenablementsettingbinding" "example" {
///   gemini_gcp_enablement_setting_id = gcp_gemini_geminigcpenablementsetting.basic.gemini_gcp_enablement_setting_id
///   setting_binding_id               = "ls-tf1b1"
///   location                         = "global"
///   target                           = "projects/980109375338"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSetting;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingArgs;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingBinding;
/// import com.pulumi.gcp.gemini.GeminiGcpEnablementSettingBindingArgs;
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
///         var basic = new GeminiGcpEnablementSetting("basic", GeminiGcpEnablementSettingArgs.builder()
///             .geminiGcpEnablementSettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .enableCustomerDataSharing(true)
///             .webGroundingType("WEB_GROUNDING_FOR_ENTERPRISE")
///             .build());
///
///         var example = new GeminiGcpEnablementSettingBinding("example", GeminiGcpEnablementSettingBindingArgs.builder()
///             .geminiGcpEnablementSettingId(basic.geminiGcpEnablementSettingId())
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
///     type: gcp:gemini:GeminiGcpEnablementSetting
///     properties:
///       geminiGcpEnablementSettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       enableCustomerDataSharing: true
///       webGroundingType: WEB_GROUNDING_FOR_ENTERPRISE
///   example:
///     type: gcp:gemini:GeminiGcpEnablementSettingBinding
///     properties:
///       geminiGcpEnablementSettingId: ${basic.geminiGcpEnablementSettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/980109375338
/// ```
///
///
/// ## Import
///
/// GeminiGcpEnablementSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, GeminiGcpEnablementSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default projects/{{project}}/locations/{{location}}/geminiGcpEnablementSettings/{{gemini_gcp_enablement_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default {{project}}/{{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding default {{location}}/{{gemini_gcp_enablement_setting_id}}/{{setting_binding_id}}
/// ```
class GeminiGcpEnablementSettingBinding extends pulumi.CustomResource {
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
  late final pulumi.Output<String> geminiGcpEnablementSettingId;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
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

  /// Creates a new [GeminiGcpEnablementSettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeminiGcpEnablementSettingBinding]. {@macro pulumi_gemini_gemini_gcp_enablement_setting_binding_gemini_gcp_enablement_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeminiGcpEnablementSettingBinding(
    String name, {
    GeminiGcpEnablementSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    geminiGcpEnablementSettingId = registerOutput<String>('geminiGcpEnablementSettingId');
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

  /// Gets an existing [GeminiGcpEnablementSettingBinding] resource's state with the given [name] and [id].
  static GeminiGcpEnablementSettingBinding get(
    String name,
    pulumi.Input<String> id, {
    GeminiGcpEnablementSettingBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GeminiGcpEnablementSettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GeminiGcpEnablementSettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    geminiGcpEnablementSettingId = registerOutput<String>('geminiGcpEnablementSettingId');
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

  /// Creates a typed reference to an existing [GeminiGcpEnablementSettingBinding] resource.
  GeminiGcpEnablementSettingBinding.reference(String urn)
    : super(
        'gcp:gemini/geminiGcpEnablementSettingBinding:GeminiGcpEnablementSettingBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    geminiGcpEnablementSettingId = registerOutput<String>('geminiGcpEnablementSettingId');
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

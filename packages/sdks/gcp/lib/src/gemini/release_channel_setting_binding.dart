import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_channel_setting_binding_args.dart';
import 'release_channel_setting_binding_state.dart';

/// The resource for managing ReleaseChannel setting bindings for Admin Control.
///
///
/// To get more information about ReleaseChannelSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Release Channel Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.ReleaseChannelSetting("basic", {
///     releaseChannelSettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     releaseChannel: "EXPERIMENTAL",
/// });
/// const example = new gcp.gemini.ReleaseChannelSettingBinding("example", {
///     releaseChannelSettingId: basic.releaseChannelSettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.ReleaseChannelSetting("basic",
///     release_channel_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     release_channel="EXPERIMENTAL")
/// example = gcp.gemini.ReleaseChannelSettingBinding("example",
///     release_channel_setting_id=basic.release_channel_setting_id,
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
///     var basic = new Gcp.Gemini.ReleaseChannelSetting("basic", new()
///     {
///         ReleaseChannelSettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         ReleaseChannel = "EXPERIMENTAL",
///     });
///
///     var example = new Gcp.Gemini.ReleaseChannelSettingBinding("example", new()
///     {
///         ReleaseChannelSettingId = basic.ReleaseChannelSettingId,
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
/// 		basic, err := gemini.NewReleaseChannelSetting(ctx, "basic", &gemini.ReleaseChannelSettingArgs{
/// 			ReleaseChannelSettingId: pulumi.String("ls-tf1"),
/// 			Location:                pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			ReleaseChannel: pulumi.String("EXPERIMENTAL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewReleaseChannelSettingBinding(ctx, "example", &gemini.ReleaseChannelSettingBindingArgs{
/// 			ReleaseChannelSettingId: basic.ReleaseChannelSettingId,
/// 			SettingBindingId:        pulumi.String("ls-tf1b1"),
/// 			Location:                pulumi.String("global"),
/// 			Target:                  pulumi.String("projects/980109375338"),
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
/// resource "gcp_gemini_releasechannelsetting" "basic" {
///   release_channel_setting_id = "ls-tf1"
///   location                   = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   release_channel = "EXPERIMENTAL"
/// }
/// resource "gcp_gemini_releasechannelsettingbinding" "example" {
///   release_channel_setting_id = gcp_gemini_releasechannelsetting.basic.release_channel_setting_id
///   setting_binding_id         = "ls-tf1b1"
///   location                   = "global"
///   target                     = "projects/980109375338"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.ReleaseChannelSetting;
/// import com.pulumi.gcp.gemini.ReleaseChannelSettingArgs;
/// import com.pulumi.gcp.gemini.ReleaseChannelSettingBinding;
/// import com.pulumi.gcp.gemini.ReleaseChannelSettingBindingArgs;
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
///         var basic = new ReleaseChannelSetting("basic", ReleaseChannelSettingArgs.builder()
///             .releaseChannelSettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .releaseChannel("EXPERIMENTAL")
///             .build());
///
///         var example = new ReleaseChannelSettingBinding("example", ReleaseChannelSettingBindingArgs.builder()
///             .releaseChannelSettingId(basic.releaseChannelSettingId())
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
///     type: gcp:gemini:ReleaseChannelSetting
///     properties:
///       releaseChannelSettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       releaseChannel: EXPERIMENTAL
///   example:
///     type: gcp:gemini:ReleaseChannelSettingBinding
///     properties:
///       releaseChannelSettingId: ${basic.releaseChannelSettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/980109375338
/// ```
///
///
/// ## Import
///
/// ReleaseChannelSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/releaseChannelSettings/{{release_channel_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{release_channel_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{release_channel_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, ReleaseChannelSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/releaseChannelSettingBinding:ReleaseChannelSettingBinding default projects/{{project}}/locations/{{location}}/releaseChannelSettings/{{release_channel_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/releaseChannelSettingBinding:ReleaseChannelSettingBinding default {{project}}/{{location}}/{{release_channel_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/releaseChannelSettingBinding:ReleaseChannelSettingBinding default {{location}}/{{release_channel_setting_id}}/{{setting_binding_id}}
/// ```
class ReleaseChannelSettingBinding extends pulumi.CustomResource {
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
  /// Format:projects/{project}/locations/{location}/releaseChannelSettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding.
  /// Possible values are: `GEMINI_CLOUD_ASSIST`, `GEMINI_CODE_ASSIST`.
  late final pulumi.Output<String> product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> releaseChannelSettingId;
  /// Id of the setting binding.
  late final pulumi.Output<String> settingBindingId;
  /// Target of the binding.
  late final pulumi.Output<String> target;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ReleaseChannelSettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReleaseChannelSettingBinding]. {@macro pulumi_gemini_release_channel_setting_binding_release_channel_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReleaseChannelSettingBinding(
    String name, {
    ReleaseChannelSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/releaseChannelSettingBinding:ReleaseChannelSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    releaseChannelSettingId = registerOutput<String>('releaseChannelSettingId');
    settingBindingId = registerOutput<String>('settingBindingId');
    target = registerOutput<String>('target');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ReleaseChannelSettingBinding] resource's state with the given [name] and [id].
  static ReleaseChannelSettingBinding get(
    String name,
    pulumi.Input<String> id, {
    ReleaseChannelSettingBindingState? state,
  }) {
    return ReleaseChannelSettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReleaseChannelSettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/releaseChannelSettingBinding:ReleaseChannelSettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    product = registerOutput<String>('product');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    releaseChannelSettingId = registerOutput<String>('releaseChannelSettingId');
    settingBindingId = registerOutput<String>('settingBindingId');
    target = registerOutput<String>('target');
    updateTime = registerOutput<String>('updateTime');
  }
}

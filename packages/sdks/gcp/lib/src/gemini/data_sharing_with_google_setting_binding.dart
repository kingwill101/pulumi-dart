import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sharing_with_google_setting_binding_args.dart';
import 'data_sharing_with_google_setting_binding_state.dart';

/// The resource for managing DataSharingWithGoogle setting bindings for Admin Control.
///
///
/// To get more information about DataSharingWithGoogleSettingBinding, see:
/// * How-to Guides
/// * [Gemini Cloud Assist overview](https://cloud.google.com/gemini/docs/cloud-assist/overview)
///
/// ## Example Usage
///
/// ### Gemini Data Sharing With Google Setting Binding Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basic = new gcp.gemini.DataSharingWithGoogleSetting("basic", {
///     dataSharingWithGoogleSettingId: "ls-tf1",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     enablePreviewDataSharing: true,
///     enableDataSharing: true,
/// });
/// const example = new gcp.gemini.DataSharingWithGoogleSettingBinding("example", {
///     dataSharingWithGoogleSettingId: basic.dataSharingWithGoogleSettingId,
///     settingBindingId: "ls-tf1b1",
///     location: "global",
///     target: "projects/980109375338",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic = gcp.gemini.DataSharingWithGoogleSetting("basic",
///     data_sharing_with_google_setting_id="ls-tf1",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     enable_preview_data_sharing=True,
///     enable_data_sharing=True)
/// example = gcp.gemini.DataSharingWithGoogleSettingBinding("example",
///     data_sharing_with_google_setting_id=basic.data_sharing_with_google_setting_id,
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
///     var basic = new Gcp.Gemini.DataSharingWithGoogleSetting("basic", new()
///     {
///         DataSharingWithGoogleSettingId = "ls-tf1",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         EnablePreviewDataSharing = true,
///         EnableDataSharing = true,
///     });
///
///     var example = new Gcp.Gemini.DataSharingWithGoogleSettingBinding("example", new()
///     {
///         DataSharingWithGoogleSettingId = basic.DataSharingWithGoogleSettingId,
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
/// 		basic, err := gemini.NewDataSharingWithGoogleSetting(ctx, "basic", &gemini.DataSharingWithGoogleSettingArgs{
/// 			DataSharingWithGoogleSettingId: pulumi.String("ls-tf1"),
/// 			Location:                       pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			EnablePreviewDataSharing: pulumi.Bool(true),
/// 			EnableDataSharing:        pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gemini.NewDataSharingWithGoogleSettingBinding(ctx, "example", &gemini.DataSharingWithGoogleSettingBindingArgs{
/// 			DataSharingWithGoogleSettingId: basic.DataSharingWithGoogleSettingId,
/// 			SettingBindingId:               pulumi.String("ls-tf1b1"),
/// 			Location:                       pulumi.String("global"),
/// 			Target:                         pulumi.String("projects/980109375338"),
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
/// resource "gcp_gemini_datasharingwithgooglesetting" "basic" {
///   data_sharing_with_google_setting_id = "ls-tf1"
///   location                            = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   enable_preview_data_sharing = true
///   enable_data_sharing         = true
/// }
/// resource "gcp_gemini_datasharingwithgooglesettingbinding" "example" {
///   data_sharing_with_google_setting_id = gcp_gemini_datasharingwithgooglesetting.basic.data_sharing_with_google_setting_id
///   setting_binding_id                  = "ls-tf1b1"
///   location                            = "global"
///   target                              = "projects/980109375338"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSetting;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSettingArgs;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSettingBinding;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSettingBindingArgs;
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
///         var basic = new DataSharingWithGoogleSetting("basic", DataSharingWithGoogleSettingArgs.builder()
///             .dataSharingWithGoogleSettingId("ls-tf1")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .enablePreviewDataSharing(true)
///             .enableDataSharing(true)
///             .build());
///
///         var example = new DataSharingWithGoogleSettingBinding("example", DataSharingWithGoogleSettingBindingArgs.builder()
///             .dataSharingWithGoogleSettingId(basic.dataSharingWithGoogleSettingId())
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
///     type: gcp:gemini:DataSharingWithGoogleSetting
///     properties:
///       dataSharingWithGoogleSettingId: ls-tf1
///       location: global
///       labels:
///         my_key: my_value
///       enablePreviewDataSharing: true
///       enableDataSharing: true
///   example:
///     type: gcp:gemini:DataSharingWithGoogleSettingBinding
///     properties:
///       dataSharingWithGoogleSettingId: ${basic.dataSharingWithGoogleSettingId}
///       settingBindingId: ls-tf1b1
///       location: global
///       target: projects/980109375338
/// ```
///
///
/// ## Import
///
/// DataSharingWithGoogleSettingBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}/settingBindings/{{setting_binding_id}}`
/// * `{{project}}/{{location}}/{{data_sharing_with_google_setting_id}}/{{setting_binding_id}}`
/// * `{{location}}/{{data_sharing_with_google_setting_id}}/{{setting_binding_id}}`
///
///
/// When using the `pulumi import` command, DataSharingWithGoogleSettingBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding default projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}/settingBindings/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding default {{project}}/{{location}}/{{data_sharing_with_google_setting_id}}/{{setting_binding_id}}
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding default {{location}}/{{data_sharing_with_google_setting_id}}/{{setting_binding_id}}
/// ```
class DataSharingWithGoogleSettingBinding extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> dataSharingWithGoogleSettingId;
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
  /// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{setting}/settingBindings/{setting_binding}
  late final pulumi.Output<String> name;
  /// Product type of the setting binding. Values include GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings) for a complete list.
  late final pulumi.Output<String> product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Required. Id of the setting binding.
  late final pulumi.Output<String> settingBindingId;
  /// Target of the binding.
  late final pulumi.Output<String> target;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataSharingWithGoogleSettingBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSharingWithGoogleSettingBinding]. {@macro pulumi_gemini_data_sharing_with_google_setting_binding_data_sharing_with_google_setting_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSharingWithGoogleSettingBinding(
    String name, {
    DataSharingWithGoogleSettingBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    dataSharingWithGoogleSettingId = registerOutput<String>('dataSharingWithGoogleSettingId');
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

  /// Gets an existing [DataSharingWithGoogleSettingBinding] resource's state with the given [name] and [id].
  static DataSharingWithGoogleSettingBinding get(
    String name,
    pulumi.Input<String> id, {
    DataSharingWithGoogleSettingBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataSharingWithGoogleSettingBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataSharingWithGoogleSettingBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataSharingWithGoogleSettingId = registerOutput<String>('dataSharingWithGoogleSettingId');
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

  /// Creates a typed reference to an existing [DataSharingWithGoogleSettingBinding] resource.
  DataSharingWithGoogleSettingBinding.reference(String urn)
    : super(
        'gcp:gemini/dataSharingWithGoogleSettingBinding:DataSharingWithGoogleSettingBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    dataSharingWithGoogleSettingId = registerOutput<String>('dataSharingWithGoogleSettingId');
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

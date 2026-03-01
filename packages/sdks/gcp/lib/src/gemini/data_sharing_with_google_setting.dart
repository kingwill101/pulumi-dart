import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_sharing_with_google_setting_args.dart';
import 'data_sharing_with_google_setting_state.dart';

/// The resource for managing DataSharingWithGoogle settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Data Sharing With Google Setting Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.DataSharingWithGoogleSetting("example", {
///     dataSharingWithGoogleSettingId: "ls1-tf",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     enablePreviewDataSharing: true,
///     enableDataSharing: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.DataSharingWithGoogleSetting("example",
///     data_sharing_with_google_setting_id="ls1-tf",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     enable_preview_data_sharing=True,
///     enable_data_sharing=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.DataSharingWithGoogleSetting("example", new()
///     {
///         DataSharingWithGoogleSettingId = "ls1-tf",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         EnablePreviewDataSharing = true,
///         EnableDataSharing = true,
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
/// 		_, err := gemini.NewDataSharingWithGoogleSetting(ctx, "example", &gemini.DataSharingWithGoogleSettingArgs{
/// 			DataSharingWithGoogleSettingId: pulumi.String("ls1-tf"),
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
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSetting;
/// import com.pulumi.gcp.gemini.DataSharingWithGoogleSettingArgs;
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
///         var example = new DataSharingWithGoogleSetting("example", DataSharingWithGoogleSettingArgs.builder()
///             .dataSharingWithGoogleSettingId("ls1-tf")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .enablePreviewDataSharing(true)
///             .enableDataSharing(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:DataSharingWithGoogleSetting
///     properties:
///       dataSharingWithGoogleSettingId: ls1-tf
///       location: global
///       labels:
///         my_key: my_value
///       enablePreviewDataSharing: true
///       enableDataSharing: true
/// ```
///
///
/// ## Import
///
/// DataSharingWithGoogleSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}`
///
/// * `{{project}}/{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// * `{{location}}/{{data_sharing_with_google_setting_id}}`
///
/// When using the `pulumi import` command, DataSharingWithGoogleSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default projects/{{project}}/locations/{{location}}/dataSharingWithGoogleSettings/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{project}}/{{location}}/{{data_sharing_with_google_setting_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting default {{location}}/{{data_sharing_with_google_setting_id}}
/// ```
class DataSharingWithGoogleSetting extends pulumi.CustomResource {
  /// Create time stamp.
  late final pulumi.Output<String> createTime;
  /// Id of the Data Sharing With Google Setting.
  late final pulumi.Output<String> dataSharingWithGoogleSettingId;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether data sharing should be enabled in GA products.
  late final pulumi.Output<bool?> enableDataSharing;
  /// Whether data sharing should be enabled in Preview products.
  late final pulumi.Output<bool?> enablePreviewDataSharing;
  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String?> location;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{dataSharingWithGoogleSetting}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [DataSharingWithGoogleSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSharingWithGoogleSetting]. {@macro pulumi_gemini_data_sharing_with_google_setting_data_sharing_with_google_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSharingWithGoogleSetting(
    String name, {
    DataSharingWithGoogleSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSharingWithGoogleSettingId = registerOutput<String>('dataSharingWithGoogleSettingId');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDataSharing = registerOutput<bool?>('enableDataSharing');
    this.enablePreviewDataSharing = registerOutput<bool?>('enablePreviewDataSharing');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [DataSharingWithGoogleSetting] resource's state with the given [name] and [id].
  static DataSharingWithGoogleSetting get(
    String name,
    pulumi.Input<String> id, {
    DataSharingWithGoogleSettingState? state,
  }) {
    return DataSharingWithGoogleSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataSharingWithGoogleSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/dataSharingWithGoogleSetting:DataSharingWithGoogleSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSharingWithGoogleSettingId = registerOutput<String>('dataSharingWithGoogleSettingId');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableDataSharing = registerOutput<bool?>('enableDataSharing');
    this.enablePreviewDataSharing = registerOutput<bool?>('enablePreviewDataSharing');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_setting_args.dart';
import 'logging_setting_state.dart';

/// The resource for managing Logging settings for Admin Control.
///
///
///
/// ## Example Usage
///
/// ### Gemini Logging Setting Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.gemini.LoggingSetting("example", {
///     loggingSettingId: "ls1-tf",
///     location: "global",
///     labels: {
///         my_key: "my_value",
///     },
///     logPromptsAndResponses: true,
///     logMetadata: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.gemini.LoggingSetting("example",
///     logging_setting_id="ls1-tf",
///     location="global",
///     labels={
///         "my_key": "my_value",
///     },
///     log_prompts_and_responses=True,
///     log_metadata=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Gcp.Gemini.LoggingSetting("example", new()
///     {
///         LoggingSettingId = "ls1-tf",
///         Location = "global",
///         Labels =
///         {
///             { "my_key", "my_value" },
///         },
///         LogPromptsAndResponses = true,
///         LogMetadata = true,
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
/// 		_, err := gemini.NewLoggingSetting(ctx, "example", &gemini.LoggingSettingArgs{
/// 			LoggingSettingId: pulumi.String("ls1-tf"),
/// 			Location:         pulumi.String("global"),
/// 			Labels: pulumi.StringMap{
/// 				"my_key": pulumi.String("my_value"),
/// 			},
/// 			LogPromptsAndResponses: pulumi.Bool(true),
/// 			LogMetadata:            pulumi.Bool(true),
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
/// resource "gcp_gemini_loggingsetting" "example" {
///   logging_setting_id = "ls1-tf"
///   location           = "global"
///   labels = {
///     "my_key" = "my_value"
///   }
///   log_prompts_and_responses = true
///   log_metadata              = true
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
///         var example = new LoggingSetting("example", LoggingSettingArgs.builder()
///             .loggingSettingId("ls1-tf")
///             .location("global")
///             .labels(Map.of("my_key", "my_value"))
///             .logPromptsAndResponses(true)
///             .logMetadata(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: gcp:gemini:LoggingSetting
///     properties:
///       loggingSettingId: ls1-tf
///       location: global
///       labels:
///         my_key: my_value
///       logPromptsAndResponses: true
///       logMetadata: true
/// ```
///
///
/// ## Import
///
/// LoggingSetting can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}`
/// * `{{project}}/{{location}}/{{logging_setting_id}}`
/// * `{{location}}/{{logging_setting_id}}`
///
///
/// When using the `pulumi import` command, LoggingSetting can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default projects/{{project}}/locations/{{location}}/loggingSettings/{{logging_setting_id}}
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default {{project}}/{{location}}/{{logging_setting_id}}
/// $ pulumi import gcp:gemini/loggingSetting:LoggingSetting default {{location}}/{{logging_setting_id}}
/// ```
class LoggingSetting extends pulumi.CustomResource {
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
  late final pulumi.Output<String> location;
  /// Whether to log metadata.
  late final pulumi.Output<bool?> logMetadata;
  /// Whether to log prompts and responses.
  late final pulumi.Output<bool?> logPromptsAndResponses;
  /// Id of the Logging Setting.
  late final pulumi.Output<String> loggingSettingId;
  /// Identifier. Name of the resource.
  /// Format:projects/{project}/locations/{location}/loggingsettings/{loggingsetting}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Update time stamp.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [LoggingSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoggingSetting]. {@macro pulumi_gemini_logging_setting_logging_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoggingSetting(
    String name, {
    LoggingSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSetting:LoggingSetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    logMetadata = registerOutput<bool?>('logMetadata');
    logPromptsAndResponses = registerOutput<bool?>('logPromptsAndResponses');
    loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [LoggingSetting] resource's state with the given [name] and [id].
  static LoggingSetting get(
    String name,
    pulumi.Input<String> id, {
    LoggingSettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LoggingSetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LoggingSetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/loggingSetting:LoggingSetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    logMetadata = registerOutput<bool?>('logMetadata');
    logPromptsAndResponses = registerOutput<bool?>('logPromptsAndResponses');
    loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [LoggingSetting] resource.
  LoggingSetting.reference(String urn)
    : super(
        'gcp:gemini/loggingSetting:LoggingSetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    logMetadata = registerOutput<bool?>('logMetadata');
    logPromptsAndResponses = registerOutput<bool?>('logPromptsAndResponses');
    loggingSettingId = registerOutput<String>('loggingSettingId');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    updateTime = registerOutput<String>('updateTime');
  }
}

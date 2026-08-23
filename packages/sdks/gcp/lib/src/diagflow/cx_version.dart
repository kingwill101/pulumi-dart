import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_version_args.dart';
import 'cx_version_state.dart';

/// You can create multiple versions of your agent flows and deploy them to separate serving environments.
/// When you edit a flow, you are editing a draft flow. At any point, you can save a draft flow as a flow version. A flow version is an immutable snapshot of your flow data and associated agent data like intents, entities, webhooks, pages, route groups, etc.
///
///
/// To get more information about Version, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Version Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agent = new gcp.diagflow.CxAgent("agent", {
///     displayName: "dialogflowcx-agent",
///     location: "global",
///     defaultLanguageCode: "en",
///     supportedLanguageCodes: [
///         "fr",
///         "de",
///         "es",
///     ],
///     timeZone: "America/New_York",
///     description: "Example description.",
///     avatarUri: "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enableStackdriverLogging: true,
///     enableSpellCorrection: true,
///     speechToTextSettings: {
///         enableSpeechAdaptation: true,
///     },
/// });
/// const version1 = new gcp.diagflow.CxVersion("version_1", {
///     parent: agent.startFlow,
///     displayName: "1.0.0",
///     description: "version 1.0.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent = gcp.diagflow.CxAgent("agent",
///     display_name="dialogflowcx-agent",
///     location="global",
///     default_language_code="en",
///     supported_language_codes=[
///         "fr",
///         "de",
///         "es",
///     ],
///     time_zone="America/New_York",
///     description="Example description.",
///     avatar_uri="https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///     enable_stackdriver_logging=True,
///     enable_spell_correction=True,
///     speech_to_text_settings={
///         "enable_speech_adaptation": True,
///     })
/// version1 = gcp.diagflow.CxVersion("version_1",
///     parent=agent.start_flow,
///     display_name="1.0.0",
///     description="version 1.0.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         SupportedLanguageCodes = new[]
///         {
///             "fr",
///             "de",
///             "es",
///         },
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///         AvatarUri = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png",
///         EnableStackdriverLogging = true,
///         EnableSpellCorrection = true,
///         SpeechToTextSettings = new Gcp.Diagflow.Inputs.CxAgentSpeechToTextSettingsArgs
///         {
///             EnableSpeechAdaptation = true,
///         },
///     });
///
///     var version1 = new Gcp.Diagflow.CxVersion("version_1", new()
///     {
///         Parent = agent.StartFlow,
///         DisplayName = "1.0.0",
///         Description = "version 1.0.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agent, err := diagflow.NewCxAgent(ctx, "agent", &diagflow.CxAgentArgs{
/// 			DisplayName:         pulumi.String("dialogflowcx-agent"),
/// 			Location:            pulumi.String("global"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			SupportedLanguageCodes: pulumi.StringArray{
/// 				pulumi.String("fr"),
/// 				pulumi.String("de"),
/// 				pulumi.String("es"),
/// 			},
/// 			TimeZone:                 pulumi.String("America/New_York"),
/// 			Description:              pulumi.String("Example description."),
/// 			AvatarUri:                pulumi.String("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"),
/// 			EnableStackdriverLogging: pulumi.Bool(true),
/// 			EnableSpellCorrection:    pulumi.Bool(true),
/// 			SpeechToTextSettings: &diagflow.CxAgentSpeechToTextSettingsArgs{
/// 				EnableSpeechAdaptation: pulumi.Bool(true),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxVersion(ctx, "version_1", &diagflow.CxVersionArgs{
/// 			Parent:      agent.StartFlow,
/// 			DisplayName: pulumi.String("1.0.0"),
/// 			Description: pulumi.String("version 1.0.0"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name               = "dialogflowcx-agent"
///   location                   = "global"
///   default_language_code      = "en"
///   supported_language_codes   = ["fr", "de", "es"]
///   time_zone                  = "America/New_York"
///   description                = "Example description."
///   avatar_uri                 = "https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png"
///   enable_stackdriver_logging = true
///   enable_spell_correction    = true
///   speech_to_text_settings = {
///     enable_speech_adaptation = true
///   }
/// }
/// resource "gcp_diagflow_cxversion" "version_1" {
///   parent       = gcp_diagflow_cxagent.agent.start_flow
///   display_name = "1.0.0"
///   description  = "version 1.0.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxVersion;
/// import com.pulumi.gcp.diagflow.CxVersionArgs;
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
///         var agent = new CxAgent("agent", CxAgentArgs.builder()
///             .displayName("dialogflowcx-agent")
///             .location("global")
///             .defaultLanguageCode("en")
///             .supportedLanguageCodes(
///                 "fr",
///                 "de",
///                 "es")
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .avatarUri("https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png")
///             .enableStackdriverLogging(true)
///             .enableSpellCorrection(true)
///             .speechToTextSettings(CxAgentSpeechToTextSettingsArgs.builder()
///                 .enableSpeechAdaptation(true)
///                 .build())
///             .build());
///
///         var version1 = new CxVersion("version1", CxVersionArgs.builder()
///             .parent(agent.startFlow())
///             .displayName("1.0.0")
///             .description("version 1.0.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agent:
///     type: gcp:diagflow:CxAgent
///     properties:
///       displayName: dialogflowcx-agent
///       location: global
///       defaultLanguageCode: en
///       supportedLanguageCodes:
///         - fr
///         - de
///         - es
///       timeZone: America/New_York
///       description: Example description.
///       avatarUri: https://cloud.google.com/_static/images/cloud/icons/favicons/onecloud/super_cloud.png
///       enableStackdriverLogging: true
///       enableSpellCorrection: true
///       speechToTextSettings:
///         enableSpeechAdaptation: true
///   version1:
///     type: gcp:diagflow:CxVersion
///     name: version_1
///     properties:
///       parent: ${agent.startFlow}
///       displayName: 1.0.0
///       description: version 1.0.0
/// ```
///
///
/// ## Import
///
/// Version can be imported using any of these accepted formats:
///
/// * `{{parent}}/versions/{{name}}`
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, Version can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxVersion:CxVersion default {{parent}}/versions/{{name}}
/// $ pulumi import gcp:diagflow/cxVersion:CxVersion default {{parent}}/{{name}}
/// ```
class CxVersion extends pulumi.CustomResource {
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;
  /// The human-readable name of the version. Limit of 64 characters.
  late final pulumi.Output<String> displayName;
  /// Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.
  late final pulumi.Output<String> name;
  /// The NLU settings of the flow at version creation.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> nluSettings;
  /// The Flow to create an Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  late final pulumi.Output<String?> parent;
  /// The state of this version.
  /// * RUNNING: Version is not ready to serve (e.g. training is running).
  /// * SUCCEEDED: Training has succeeded and this version is ready to serve.
  /// * FAILED: Version training failed.
  late final pulumi.Output<String> state;

  /// Creates a new [CxVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxVersion]. {@macro pulumi_diagflow_cx_version_cx_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxVersion(
    String name, {
    CxVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxVersion:CxVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    nluSettings = registerOutput<List<Map<String, dynamic>>>('nluSettings');
    parent = registerOutput<String?>('parent');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [CxVersion] resource's state with the given [name] and [id].
  static CxVersion get(
    String name,
    pulumi.Input<String> id, {
    CxVersionState? state,
  }) {
    return CxVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CxVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxVersion:CxVersion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    nluSettings = registerOutput<List<Map<String, dynamic>>>('nluSettings');
    parent = registerOutput<String?>('parent');
    this.state = registerOutput<String>('state');
  }
}

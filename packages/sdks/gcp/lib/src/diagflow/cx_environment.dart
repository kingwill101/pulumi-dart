import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_environment_args.dart';
import 'cx_environment_state.dart';

/// Represents an environment for an agent. You can create multiple versions of your agent and publish them to separate environments.
/// When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent.
/// When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for testing, development, production, etc.
///
///
/// To get more information about Environment, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.environments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Environment Full
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
/// const development = new gcp.diagflow.CxEnvironment("development", {
///     parent: agent.id,
///     displayName: "Development",
///     description: "Development Environment",
///     versionConfigs: [{
///         version: version1.id,
///     }],
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
/// development = gcp.diagflow.CxEnvironment("development",
///     parent=agent.id,
///     display_name="Development",
///     description="Development Environment",
///     version_configs=[{
///         "version": version1.id,
///     }])
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
///     var development = new Gcp.Diagflow.CxEnvironment("development", new()
///     {
///         Parent = agent.Id,
///         DisplayName = "Development",
///         Description = "Development Environment",
///         VersionConfigs = new[]
///         {
///             new Gcp.Diagflow.Inputs.CxEnvironmentVersionConfigArgs
///             {
///                 Version = version1.Id,
///             },
///         },
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
/// 		version1, err := diagflow.NewCxVersion(ctx, "version_1", &diagflow.CxVersionArgs{
/// 			Parent:      agent.StartFlow,
/// 			DisplayName: pulumi.String("1.0.0"),
/// 			Description: pulumi.String("version 1.0.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxEnvironment(ctx, "development", &diagflow.CxEnvironmentArgs{
/// 			Parent:      agent.ID(),
/// 			DisplayName: pulumi.String("Development"),
/// 			Description: pulumi.String("Development Environment"),
/// 			VersionConfigs: diagflow.CxEnvironmentVersionConfigArray{
/// 				&diagflow.CxEnvironmentVersionConfigArgs{
/// 					Version: version1.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.gcp.diagflow.CxAgent;
/// import com.pulumi.gcp.diagflow.CxAgentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxAgentSpeechToTextSettingsArgs;
/// import com.pulumi.gcp.diagflow.CxVersion;
/// import com.pulumi.gcp.diagflow.CxVersionArgs;
/// import com.pulumi.gcp.diagflow.CxEnvironment;
/// import com.pulumi.gcp.diagflow.CxEnvironmentArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxEnvironmentVersionConfigArgs;
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
///         var development = new CxEnvironment("development", CxEnvironmentArgs.builder()
///             .parent(agent.id())
///             .displayName("Development")
///             .description("Development Environment")
///             .versionConfigs(CxEnvironmentVersionConfigArgs.builder()
///                 .version(version1.id())
///                 .build())
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
///   development:
///     type: gcp:diagflow:CxEnvironment
///     properties:
///       parent: ${agent.id}
///       displayName: Development
///       description: Development Environment
///       versionConfigs:
///         - version: ${version1.id}
/// ```
///
///
/// ## Import
///
/// Environment can be imported using any of these accepted formats:
///
/// * `{{parent}}/environments/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEnvironment:CxEnvironment default {{parent}}/environments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxEnvironment:CxEnvironment default {{parent}}/{{name}}
/// ```
class CxEnvironment extends pulumi.CustomResource {
  /// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String?> description;
  /// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  late final pulumi.Output<String> displayName;
  /// The name of the environment.
  late final pulumi.Output<String> name;
  /// The Agent to create an Environment for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  late final pulumi.Output<String?> parent;
  /// Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> versionConfigs;

  /// Creates a new [CxEnvironment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxEnvironment]. {@macro pulumi_diagflow_cx_environment_cx_environment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxEnvironment(
    String name, {
    CxEnvironmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxEnvironment:CxEnvironment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    updateTime = registerOutput<String>('updateTime');
    versionConfigs = registerOutput<List<Map<String, dynamic>>>('versionConfigs');
  }

  /// Gets an existing [CxEnvironment] resource's state with the given [name] and [id].
  static CxEnvironment get(
    String name,
    pulumi.Input<String> id, {
    CxEnvironmentState? state,
  }) {
    return CxEnvironment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CxEnvironment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxEnvironment:CxEnvironment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
    updateTime = registerOutput<String>('updateTime');
    versionConfigs = registerOutput<List<Map<String, dynamic>>>('versionConfigs');
  }
}

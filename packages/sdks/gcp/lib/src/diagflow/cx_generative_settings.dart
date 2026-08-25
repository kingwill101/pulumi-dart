import 'package:pulumi/pulumi.dart' as pulumi;
import 'cx_generative_settings_args.dart';
import 'cx_generative_settings_fallback_settings.dart';
import 'cx_generative_settings_generative_safety_settings.dart';
import 'cx_generative_settings_knowledge_connector_settings.dart';
import 'cx_generative_settings_llm_model_settings.dart';
import 'cx_generative_settings_state.dart';

/// Settings for Generative AI.
///
///
/// To get more information about GenerativeSettings, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents/getGenerativeSettings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Generative Settings Full
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
///     timeZone: "America/New_York",
///     description: "Example description.",
/// });
/// const fullGenerativeSettings = new gcp.diagflow.CxGenerativeSettings("full_generative_settings", {
///     parent: agent.id,
///     fallbackSettings: {
///         selectedPrompt: "example prompt",
///         promptTemplates: [{
///             displayName: "example prompt",
///             promptText: "example prompt text",
///             frozen: false,
///         }],
///     },
///     generativeSafetySettings: {
///         defaultBannedPhraseMatchStrategy: "PARTIAL_MATCH",
///         bannedPhrases: [{
///             text: "example text",
///             languageCode: "en",
///         }],
///     },
///     knowledgeConnectorSettings: {
///         business: "example business",
///         agent: "example agent",
///         agentIdentity: "virtual agent",
///         businessDescription: "a family company selling freshly roasted coffee beans",
///         agentScope: "Example company website",
///         disableDataStoreFallback: false,
///     },
///     languageCode: "en",
///     llmModelSettings: {
///         model: "gemini-2.0-flash-001",
///         promptText: "example prompt text",
///     },
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
///     time_zone="America/New_York",
///     description="Example description.")
/// full_generative_settings = gcp.diagflow.CxGenerativeSettings("full_generative_settings",
///     parent=agent.id,
///     fallback_settings={
///         "selected_prompt": "example prompt",
///         "prompt_templates": [{
///             "display_name": "example prompt",
///             "prompt_text": "example prompt text",
///             "frozen": False,
///         }],
///     },
///     generative_safety_settings={
///         "default_banned_phrase_match_strategy": "PARTIAL_MATCH",
///         "banned_phrases": [{
///             "text": "example text",
///             "language_code": "en",
///         }],
///     },
///     knowledge_connector_settings={
///         "business": "example business",
///         "agent": "example agent",
///         "agent_identity": "virtual agent",
///         "business_description": "a family company selling freshly roasted coffee beans",
///         "agent_scope": "Example company website",
///         "disable_data_store_fallback": False,
///     },
///     language_code="en",
///     llm_model_settings={
///         "model": "gemini-2.0-flash-001",
///         "prompt_text": "example prompt text",
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
///     var agent = new Gcp.Diagflow.CxAgent("agent", new()
///     {
///         DisplayName = "dialogflowcx-agent",
///         Location = "global",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///         Description = "Example description.",
///     });
///
///     var fullGenerativeSettings = new Gcp.Diagflow.CxGenerativeSettings("full_generative_settings", new()
///     {
///         Parent = agent.Id,
///         FallbackSettings = new Gcp.Diagflow.Inputs.CxGenerativeSettingsFallbackSettingsArgs
///         {
///             SelectedPrompt = "example prompt",
///             PromptTemplates = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxGenerativeSettingsFallbackSettingsPromptTemplateArgs
///                 {
///                     DisplayName = "example prompt",
///                     PromptText = "example prompt text",
///                     Frozen = false,
///                 },
///             },
///         },
///         GenerativeSafetySettings = new Gcp.Diagflow.Inputs.CxGenerativeSettingsGenerativeSafetySettingsArgs
///         {
///             DefaultBannedPhraseMatchStrategy = "PARTIAL_MATCH",
///             BannedPhrases = new[]
///             {
///                 new Gcp.Diagflow.Inputs.CxGenerativeSettingsGenerativeSafetySettingsBannedPhraseArgs
///                 {
///                     Text = "example text",
///                     LanguageCode = "en",
///                 },
///             },
///         },
///         KnowledgeConnectorSettings = new Gcp.Diagflow.Inputs.CxGenerativeSettingsKnowledgeConnectorSettingsArgs
///         {
///             Business = "example business",
///             Agent = "example agent",
///             AgentIdentity = "virtual agent",
///             BusinessDescription = "a family company selling freshly roasted coffee beans",
///             AgentScope = "Example company website",
///             DisableDataStoreFallback = false,
///         },
///         LanguageCode = "en",
///         LlmModelSettings = new Gcp.Diagflow.Inputs.CxGenerativeSettingsLlmModelSettingsArgs
///         {
///             Model = "gemini-2.0-flash-001",
///             PromptText = "example prompt text",
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
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 			Description:         pulumi.String("Example description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewCxGenerativeSettings(ctx, "full_generative_settings", &diagflow.CxGenerativeSettingsArgs{
/// 			Parent: agent.ID().ToIDOutput().ToStringOutput(),
/// 			FallbackSettings: &diagflow.CxGenerativeSettingsFallbackSettingsArgs{
/// 				SelectedPrompt: pulumi.String("example prompt"),
/// 				PromptTemplates: diagflow.CxGenerativeSettingsFallbackSettingsPromptTemplateArray{
/// 					&diagflow.CxGenerativeSettingsFallbackSettingsPromptTemplateArgs{
/// 						DisplayName: pulumi.String("example prompt"),
/// 						PromptText:  pulumi.String("example prompt text"),
/// 						Frozen:      pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			GenerativeSafetySettings: &diagflow.CxGenerativeSettingsGenerativeSafetySettingsArgs{
/// 				DefaultBannedPhraseMatchStrategy: pulumi.String("PARTIAL_MATCH"),
/// 				BannedPhrases: diagflow.CxGenerativeSettingsGenerativeSafetySettingsBannedPhraseArray{
/// 					&diagflow.CxGenerativeSettingsGenerativeSafetySettingsBannedPhraseArgs{
/// 						Text:         pulumi.String("example text"),
/// 						LanguageCode: pulumi.String("en"),
/// 					},
/// 				},
/// 			},
/// 			KnowledgeConnectorSettings: &diagflow.CxGenerativeSettingsKnowledgeConnectorSettingsArgs{
/// 				Business:                 pulumi.String("example business"),
/// 				Agent:                    pulumi.String("example agent"),
/// 				AgentIdentity:            pulumi.String("virtual agent"),
/// 				BusinessDescription:      pulumi.String("a family company selling freshly roasted coffee beans"),
/// 				AgentScope:               pulumi.String("Example company website"),
/// 				DisableDataStoreFallback: pulumi.Bool(false),
/// 			},
/// 			LanguageCode: pulumi.String("en"),
/// 			LlmModelSettings: &diagflow.CxGenerativeSettingsLlmModelSettingsArgs{
/// 				Model:      pulumi.String("gemini-2.0-flash-001"),
/// 				PromptText: pulumi.String("example prompt text"),
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
/// resource "gcp_diagflow_cxagent" "agent" {
///   display_name          = "dialogflowcx-agent"
///   location              = "global"
///   default_language_code = "en"
///   time_zone             = "America/New_York"
///   description           = "Example description."
/// }
/// resource "gcp_diagflow_cxgenerativesettings" "full_generative_settings" {
///   parent = gcp_diagflow_cxagent.agent.id
///   fallback_settings = {
///     selected_prompt = "example prompt"
///     prompt_templates = [{
///       "displayName" = "example prompt"
///       "promptText"  = "example prompt text"
///       "frozen"      = false
///     }]
///   }
///   generative_safety_settings = {
///     default_banned_phrase_match_strategy = "PARTIAL_MATCH"
///     banned_phrases = [{
///       "text"         = "example text"
///       "languageCode" = "en"
///     }]
///   }
///   knowledge_connector_settings = {
///     business                    = "example business"
///     agent                       = "example agent"
///     agent_identity              = "virtual agent"
///     business_description        = "a family company selling freshly roasted coffee beans"
///     agent_scope                 = "Example company website"
///     disable_data_store_fallback = false
///   }
///   language_code = "en"
///   llm_model_settings = {
///     model       = "gemini-2.0-flash-001"
///     prompt_text = "example prompt text"
///   }
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
/// import com.pulumi.gcp.diagflow.CxGenerativeSettings;
/// import com.pulumi.gcp.diagflow.CxGenerativeSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsFallbackSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsFallbackSettingsPromptTemplateArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsGenerativeSafetySettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsGenerativeSafetySettingsBannedPhraseArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsKnowledgeConnectorSettingsArgs;
/// import com.pulumi.gcp.diagflow.inputs.CxGenerativeSettingsLlmModelSettingsArgs;
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
///             .timeZone("America/New_York")
///             .description("Example description.")
///             .build());
///
///         var fullGenerativeSettings = new CxGenerativeSettings("fullGenerativeSettings", CxGenerativeSettingsArgs.builder()
///             .parent(agent.id())
///             .fallbackSettings(CxGenerativeSettingsFallbackSettingsArgs.builder()
///                 .selectedPrompt("example prompt")
///                 .promptTemplates(CxGenerativeSettingsFallbackSettingsPromptTemplateArgs.builder()
///                     .displayName("example prompt")
///                     .promptText("example prompt text")
///                     .frozen(false)
///                     .build())
///                 .build())
///             .generativeSafetySettings(CxGenerativeSettingsGenerativeSafetySettingsArgs.builder()
///                 .defaultBannedPhraseMatchStrategy("PARTIAL_MATCH")
///                 .bannedPhrases(CxGenerativeSettingsGenerativeSafetySettingsBannedPhraseArgs.builder()
///                     .text("example text")
///                     .languageCode("en")
///                     .build())
///                 .build())
///             .knowledgeConnectorSettings(CxGenerativeSettingsKnowledgeConnectorSettingsArgs.builder()
///                 .business("example business")
///                 .agent("example agent")
///                 .agentIdentity("virtual agent")
///                 .businessDescription("a family company selling freshly roasted coffee beans")
///                 .agentScope("Example company website")
///                 .disableDataStoreFallback(false)
///                 .build())
///             .languageCode("en")
///             .llmModelSettings(CxGenerativeSettingsLlmModelSettingsArgs.builder()
///                 .model("gemini-2.0-flash-001")
///                 .promptText("example prompt text")
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
///       timeZone: America/New_York
///       description: Example description.
///   fullGenerativeSettings:
///     type: gcp:diagflow:CxGenerativeSettings
///     name: full_generative_settings
///     properties:
///       parent: ${agent.id}
///       fallbackSettings:
///         selectedPrompt: example prompt
///         promptTemplates:
///           - displayName: example prompt
///             promptText: example prompt text
///             frozen: false
///       generativeSafetySettings:
///         defaultBannedPhraseMatchStrategy: PARTIAL_MATCH
///         bannedPhrases:
///           - text: example text
///             languageCode: en
///       knowledgeConnectorSettings:
///         business: example business
///         agent: example agent
///         agentIdentity: virtual agent
///         businessDescription: a family company selling freshly roasted coffee beans
///         agentScope: Example company website
///         disableDataStoreFallback: false
///       languageCode: en
///       llmModelSettings:
///         model: gemini-2.0-flash-001
///         promptText: example prompt text
/// ```
///
///
/// ## Import
///
/// GenerativeSettings can be imported using any of these accepted formats:
///
/// * `{{parent}}/generativeSettings`
/// * `{{parent}}`
///
///
/// When using the `pulumi import` command, GenerativeSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings default {{parent}}/generativeSettings
/// $ pulumi import gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings default {{parent}}
/// ```
class CxGenerativeSettings extends pulumi.CustomResource {
  /// Settings for Generative Fallback.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsFallbackSettings?> fallbackSettings;
  /// Settings for Generative Safety.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsGenerativeSafetySettings?> generativeSafetySettings;
  /// Settings for knowledge connector.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsKnowledgeConnectorSettings?> knowledgeConnectorSettings;
  /// Language for this settings.
  late final pulumi.Output<String> languageCode;
  /// LLM model settings.
  /// Structure is documented below.
  late final pulumi.Output<CxGenerativeSettingsLlmModelSettings?> llmModelSettings;
  /// The unique identifier of the generativeSettings.
  /// Format: projects/&lt;ProjectID&gt;/locations/&lt;LocationID&gt;/agents/&lt;AgentID&gt;/generativeSettings.
  late final pulumi.Output<String> name;
  /// The agent to create a flow for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;.
  late final pulumi.Output<String?> parent;

  /// Creates a new [CxGenerativeSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CxGenerativeSettings]. {@macro pulumi_diagflow_cx_generative_settings_cx_generative_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CxGenerativeSettings(
    String name, {
    CxGenerativeSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    fallbackSettings = registerOutput<CxGenerativeSettingsFallbackSettings?>('fallbackSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsFallbackSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generativeSafetySettings = registerOutput<CxGenerativeSettingsGenerativeSafetySettings?>('generativeSafetySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsGenerativeSafetySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    knowledgeConnectorSettings = registerOutput<CxGenerativeSettingsKnowledgeConnectorSettings?>('knowledgeConnectorSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    llmModelSettings = registerOutput<CxGenerativeSettingsLlmModelSettings?>('llmModelSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
  }

  /// Gets an existing [CxGenerativeSettings] resource's state with the given [name] and [id].
  static CxGenerativeSettings get(
    String name,
    pulumi.Input<String> id, {
    CxGenerativeSettingsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return CxGenerativeSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  CxGenerativeSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    fallbackSettings = registerOutput<CxGenerativeSettingsFallbackSettings?>('fallbackSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsFallbackSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generativeSafetySettings = registerOutput<CxGenerativeSettingsGenerativeSafetySettings?>('generativeSafetySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsGenerativeSafetySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    knowledgeConnectorSettings = registerOutput<CxGenerativeSettingsKnowledgeConnectorSettings?>('knowledgeConnectorSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    llmModelSettings = registerOutput<CxGenerativeSettingsLlmModelSettings?>('llmModelSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
  }

  /// Creates a typed reference to an existing [CxGenerativeSettings] resource.
  CxGenerativeSettings.reference(String urn)
    : super(
        'gcp:diagflow/cxGenerativeSettings:CxGenerativeSettings',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    fallbackSettings = registerOutput<CxGenerativeSettingsFallbackSettings?>('fallbackSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsFallbackSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    generativeSafetySettings = registerOutput<CxGenerativeSettingsGenerativeSafetySettings?>('generativeSafetySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsGenerativeSafetySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    knowledgeConnectorSettings = registerOutput<CxGenerativeSettingsKnowledgeConnectorSettings?>('knowledgeConnectorSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsKnowledgeConnectorSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    llmModelSettings = registerOutput<CxGenerativeSettingsLlmModelSettings?>('llmModelSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CxGenerativeSettingsLlmModelSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    parent = registerOutput<String?>('parent');
  }
}

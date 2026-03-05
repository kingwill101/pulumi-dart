import 'package:pulumi/pulumi.dart' as pulumi;
import 'conversation_profile_args.dart';
import 'conversation_profile_automated_agent_config.dart';
import 'conversation_profile_human_agent_assistant_config.dart';
import 'conversation_profile_human_agent_handoff_config.dart';
import 'conversation_profile_logging_config.dart';
import 'conversation_profile_new_message_event_notification_config.dart';
import 'conversation_profile_new_recognition_result_notification_config.dart';
import 'conversation_profile_notification_config.dart';
import 'conversation_profile_state.dart';
import 'conversation_profile_stt_config.dart';
import 'conversation_profile_tts_config.dart';

/// A conversation profile configures a set of parameters that control the suggestions made to an agent. These parameters control the suggestions that are surfaced during runtime. Each profile configures either a Dialogflow virtual agent or a human agent for a conversation.
///
///
/// To get more information about ConversationProfile, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.conversationProfiles)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Conversation Profile Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicAgent = new gcp.diagflow.Agent("basic_agent", {
///     displayName: "example_agent",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
/// });
/// const basicProfile = new gcp.diagflow.ConversationProfile("basic_profile", {
///     displayName: "dialogflow-profile",
///     location: "global",
///     automatedAgentConfig: {
///         agent: pulumi.interpolate`projects/${basicAgent.id}/locations/global/agent/environments/draft`,
///     },
///     humanAgentAssistantConfig: {
///         messageAnalysisConfig: {
///             enableEntityExtraction: true,
///             enableSentimentAnalysis: true,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_agent = gcp.diagflow.Agent("basic_agent",
///     display_name="example_agent",
///     default_language_code="en",
///     time_zone="America/New_York")
/// basic_profile = gcp.diagflow.ConversationProfile("basic_profile",
///     display_name="dialogflow-profile",
///     location="global",
///     automated_agent_config={
///         "agent": basic_agent.id.apply(lambda id: f"projects/{id}/locations/global/agent/environments/draft"),
///     },
///     human_agent_assistant_config={
///         "message_analysis_config": {
///             "enable_entity_extraction": True,
///             "enable_sentiment_analysis": True,
///         },
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
///     var basicAgent = new Gcp.Diagflow.Agent("basic_agent", new()
///     {
///         DisplayName = "example_agent",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///     });
///
///     var basicProfile = new Gcp.Diagflow.ConversationProfile("basic_profile", new()
///     {
///         DisplayName = "dialogflow-profile",
///         Location = "global",
///         AutomatedAgentConfig = new Gcp.Diagflow.Inputs.ConversationProfileAutomatedAgentConfigArgs
///         {
///             Agent = basicAgent.Id.Apply(id => $"projects/{id}/locations/global/agent/environments/draft"),
///         },
///         HumanAgentAssistantConfig = new Gcp.Diagflow.Inputs.ConversationProfileHumanAgentAssistantConfigArgs
///         {
///             MessageAnalysisConfig = new Gcp.Diagflow.Inputs.ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfigArgs
///             {
///                 EnableEntityExtraction = true,
///                 EnableSentimentAnalysis = true,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/diagflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// 			DisplayName:         pulumi.String("example_agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewConversationProfile(ctx, "basic_profile", &diagflow.ConversationProfileArgs{
/// 			DisplayName: pulumi.String("dialogflow-profile"),
/// 			Location:    pulumi.String("global"),
/// 			AutomatedAgentConfig: &diagflow.ConversationProfileAutomatedAgentConfigArgs{
/// 				Agent: basicAgent.ID().ApplyT(func(id string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/locations/global/agent/environments/draft", id), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			HumanAgentAssistantConfig: &diagflow.ConversationProfileHumanAgentAssistantConfigArgs{
/// 				MessageAnalysisConfig: &diagflow.ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfigArgs{
/// 					EnableEntityExtraction:  pulumi.Bool(true),
/// 					EnableSentimentAnalysis: pulumi.Bool(true),
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
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
/// import com.pulumi.gcp.diagflow.ConversationProfile;
/// import com.pulumi.gcp.diagflow.ConversationProfileArgs;
/// import com.pulumi.gcp.diagflow.inputs.ConversationProfileAutomatedAgentConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.ConversationProfileHumanAgentAssistantConfigArgs;
/// import com.pulumi.gcp.diagflow.inputs.ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfigArgs;
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
///         var basicAgent = new Agent("basicAgent", AgentArgs.builder()
///             .displayName("example_agent")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .build());
///
///         var basicProfile = new ConversationProfile("basicProfile", ConversationProfileArgs.builder()
///             .displayName("dialogflow-profile")
///             .location("global")
///             .automatedAgentConfig(ConversationProfileAutomatedAgentConfigArgs.builder()
///                 .agent(basicAgent.id().applyValue(_id -> String.format("projects/%s/locations/global/agent/environments/draft", _id)))
///                 .build())
///             .humanAgentAssistantConfig(ConversationProfileHumanAgentAssistantConfigArgs.builder()
///                 .messageAnalysisConfig(ConversationProfileHumanAgentAssistantConfigMessageAnalysisConfigArgs.builder()
///                     .enableEntityExtraction(true)
///                     .enableSentimentAnalysis(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicAgent:
///     type: gcp:diagflow:Agent
///     name: basic_agent
///     properties:
///       displayName: example_agent
///       defaultLanguageCode: en
///       timeZone: America/New_York
///   basicProfile:
///     type: gcp:diagflow:ConversationProfile
///     name: basic_profile
///     properties:
///       displayName: dialogflow-profile
///       location: global
///       automatedAgentConfig:
///         agent: projects/${basicAgent.id}/locations/global/agent/environments/draft
///       humanAgentAssistantConfig:
///         messageAnalysisConfig:
///           enableEntityExtraction: true
///           enableSentimentAnalysis: true
/// ```
///
/// ### Dialogflow Conversation Profile Recognition Result Notification
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const recognitionResultNotificationProfileTopic = new gcp.pubsub.Topic("recognition_result_notification_profile", {name: "recognition-result-notification"});
/// const recognitionResultNotificationProfile = new gcp.diagflow.ConversationProfile("recognition_result_notification_profile", {
///     displayName: "dialogflow-profile",
///     location: "global",
///     newRecognitionResultNotificationConfig: {
///         topic: recognitionResultNotificationProfileTopic.id,
///         messageFormat: "JSON",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// recognition_result_notification_profile_topic = gcp.pubsub.Topic("recognition_result_notification_profile", name="recognition-result-notification")
/// recognition_result_notification_profile = gcp.diagflow.ConversationProfile("recognition_result_notification_profile",
///     display_name="dialogflow-profile",
///     location="global",
///     new_recognition_result_notification_config={
///         "topic": recognition_result_notification_profile_topic.id,
///         "message_format": "JSON",
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
///     var recognitionResultNotificationProfileTopic = new Gcp.PubSub.Topic("recognition_result_notification_profile", new()
///     {
///         Name = "recognition-result-notification",
///     });
///
///     var recognitionResultNotificationProfile = new Gcp.Diagflow.ConversationProfile("recognition_result_notification_profile", new()
///     {
///         DisplayName = "dialogflow-profile",
///         Location = "global",
///         NewRecognitionResultNotificationConfig = new Gcp.Diagflow.Inputs.ConversationProfileNewRecognitionResultNotificationConfigArgs
///         {
///             Topic = recognitionResultNotificationProfileTopic.Id,
///             MessageFormat = "JSON",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		recognitionResultNotificationProfileTopic, err := pubsub.NewTopic(ctx, "recognition_result_notification_profile", &pubsub.TopicArgs{
/// 			Name: pulumi.String("recognition-result-notification"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewConversationProfile(ctx, "recognition_result_notification_profile", &diagflow.ConversationProfileArgs{
/// 			DisplayName: pulumi.String("dialogflow-profile"),
/// 			Location:    pulumi.String("global"),
/// 			NewRecognitionResultNotificationConfig: &diagflow.ConversationProfileNewRecognitionResultNotificationConfigArgs{
/// 				Topic:         recognitionResultNotificationProfileTopic.ID(),
/// 				MessageFormat: pulumi.String("JSON"),
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.diagflow.ConversationProfile;
/// import com.pulumi.gcp.diagflow.ConversationProfileArgs;
/// import com.pulumi.gcp.diagflow.inputs.ConversationProfileNewRecognitionResultNotificationConfigArgs;
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
///         var recognitionResultNotificationProfileTopic = new Topic("recognitionResultNotificationProfileTopic", TopicArgs.builder()
///             .name("recognition-result-notification")
///             .build());
///
///         var recognitionResultNotificationProfile = new ConversationProfile("recognitionResultNotificationProfile", ConversationProfileArgs.builder()
///             .displayName("dialogflow-profile")
///             .location("global")
///             .newRecognitionResultNotificationConfig(ConversationProfileNewRecognitionResultNotificationConfigArgs.builder()
///                 .topic(recognitionResultNotificationProfileTopic.id())
///                 .messageFormat("JSON")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   recognitionResultNotificationProfile:
///     type: gcp:diagflow:ConversationProfile
///     name: recognition_result_notification_profile
///     properties:
///       displayName: dialogflow-profile
///       location: global
///       newRecognitionResultNotificationConfig:
///         topic: ${recognitionResultNotificationProfileTopic.id}
///         messageFormat: JSON
///   recognitionResultNotificationProfileTopic:
///     type: gcp:pubsub:Topic
///     name: recognition_result_notification_profile
///     properties:
///       name: recognition-result-notification
/// ```
///
///
/// ## Import
///
/// ConversationProfile can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ConversationProfile can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/conversationProfile:ConversationProfile default {{name}}
/// ```
class ConversationProfile extends pulumi.CustomResource {
  /// Configuration for an automated agent to use with this profile
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileAutomatedAgentConfig?> automatedAgentConfig;
  /// Required. Human readable name for this profile. Max length 1024 bytes.
  late final pulumi.Output<String> displayName;
  /// Configuration for connecting to a live agent
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileHumanAgentAssistantConfig?> humanAgentAssistantConfig;
  /// Defines the hand off to a live agent, typically on which external agent service provider to connect to a conversation.
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileHumanAgentHandoffConfig?> humanAgentHandoffConfig;
  /// Language code for the conversation profile. This should be a BCP-47 language tag.
  late final pulumi.Output<String> languageCode;
  /// desc
  late final pulumi.Output<String> location;
  /// Defines logging behavior for conversation lifecycle events.
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileLoggingConfig?> loggingConfig;
  /// name
  late final pulumi.Output<String> name;
  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/topics/&lt;Topic ID&gt;"
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileNewMessageEventNotificationConfig?> newMessageEventNotificationConfig;
  /// Optional. Configuration for publishing transcription intermediate results. Event will be sent in format of ConversationEvent. If configured, the following information will be populated as ConversationEvent Pub/Sub message attributes: - "participant_id" - "participantRole" - "message_id"
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileNewRecognitionResultNotificationConfig?> newRecognitionResultNotificationConfig;
  /// Pub/Sub topic on which to publish new agent assistant events.
  /// Expects the format "projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/topics/&lt;Topic ID&gt;"
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileNotificationConfig?> notificationConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Name of the CX SecuritySettings reference for the agent.
  late final pulumi.Output<String?> securitySettings;
  /// Settings for speech transcription.
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileSttConfig?> sttConfig;
  /// The time zone of this conversational profile.
  late final pulumi.Output<String?> timeZone;
  /// Configuration for Text-to-Speech synthesization. If agent defines synthesization options as well, agent settings overrides the option here.
  /// Structure is documented below.
  late final pulumi.Output<ConversationProfileTtsConfig?> ttsConfig;

  /// Creates a new [ConversationProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConversationProfile]. {@macro pulumi_diagflow_conversation_profile_conversation_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConversationProfile(
    String name, {
    ConversationProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/conversationProfile:ConversationProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automatedAgentConfig = registerOutput<ConversationProfileAutomatedAgentConfig?>('automatedAgentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileAutomatedAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    humanAgentAssistantConfig = registerOutput<ConversationProfileHumanAgentAssistantConfig?>('humanAgentAssistantConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileHumanAgentAssistantConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    humanAgentHandoffConfig = registerOutput<ConversationProfileHumanAgentHandoffConfig?>('humanAgentHandoffConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileHumanAgentHandoffConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<ConversationProfileLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    newMessageEventNotificationConfig = registerOutput<ConversationProfileNewMessageEventNotificationConfig?>('newMessageEventNotificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNewMessageEventNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    newRecognitionResultNotificationConfig = registerOutput<ConversationProfileNewRecognitionResultNotificationConfig?>('newRecognitionResultNotificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNewRecognitionResultNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    notificationConfig = registerOutput<ConversationProfileNotificationConfig?>('notificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    securitySettings = registerOutput<String?>('securitySettings');
    sttConfig = registerOutput<ConversationProfileSttConfig?>('sttConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileSttConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeZone = registerOutput<String?>('timeZone');
    ttsConfig = registerOutput<ConversationProfileTtsConfig?>('ttsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileTtsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConversationProfile] resource's state with the given [name] and [id].
  static ConversationProfile get(
    String name,
    pulumi.Input<String> id, {
    ConversationProfileState? state,
  }) {
    return ConversationProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConversationProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/conversationProfile:ConversationProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automatedAgentConfig = registerOutput<ConversationProfileAutomatedAgentConfig?>('automatedAgentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileAutomatedAgentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String>('displayName');
    humanAgentAssistantConfig = registerOutput<ConversationProfileHumanAgentAssistantConfig?>('humanAgentAssistantConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileHumanAgentAssistantConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    humanAgentHandoffConfig = registerOutput<ConversationProfileHumanAgentHandoffConfig?>('humanAgentHandoffConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileHumanAgentHandoffConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    languageCode = registerOutput<String>('languageCode');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<ConversationProfileLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    newMessageEventNotificationConfig = registerOutput<ConversationProfileNewMessageEventNotificationConfig?>('newMessageEventNotificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNewMessageEventNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    newRecognitionResultNotificationConfig = registerOutput<ConversationProfileNewRecognitionResultNotificationConfig?>('newRecognitionResultNotificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNewRecognitionResultNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    notificationConfig = registerOutput<ConversationProfileNotificationConfig?>('notificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    securitySettings = registerOutput<String?>('securitySettings');
    sttConfig = registerOutput<ConversationProfileSttConfig?>('sttConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileSttConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeZone = registerOutput<String?>('timeZone');
    ttsConfig = registerOutput<ConversationProfileTtsConfig?>('ttsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConversationProfileTtsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

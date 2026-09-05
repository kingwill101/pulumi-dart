import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_root_agent_association_args.dart';
import 'app_root_agent_association_state.dart';

/// Sets the root agent of a CES App after both the app and the agent have
/// been created.
///
/// Because a CES Agent must reference its parent app at creation time, the
/// app must exist before any agent can be created. This means the root agent
/// cannot be set on the app at creation time — use this resource to set it
/// afterwards.
///
/// &gt; **Note:** This resource modifies the `rootAgent` field on the parent
/// `gcp.ces.App`. Add `lifecycle { ignoreChanges = [rootAgent] }` to
/// your `gcp.ces.App` resource to prevent Terraform from detecting drift
/// and clearing the field on every plan.
///
///
///
/// ## Example Usage
///
/// ### Ces App Root Agent Association Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const app = new gcp.ces.App("app", {
///     location: "eu",
///     appId: "app-id",
///     displayName: "Example App app-id",
///     languageSettings: {
///         defaultLanguageCode: "en-US",
///         supportedLanguageCodes: ["es-ES"],
///         fallbackAction: "escalate",
///     },
///     timeZoneSettings: {
///         timeZone: "America/Los_Angeles",
///     },
/// });
/// const agent = new gcp.ces.Agent("agent", {
///     location: app.location,
///     app: app.appId,
///     agentId: "agent-id",
///     displayName: "Example Agent",
///     instruction: "You are a helpful assistant.",
///     llmAgent: {},
/// });
/// const association = new gcp.ces.AppRootAgentAssociation("association", {
///     location: app.location,
///     appId: app.appId,
///     agentId: agent.agentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// app = gcp.ces.App("app",
///     location="eu",
///     app_id="app-id",
///     display_name="Example App app-id",
///     language_settings={
///         "default_language_code": "en-US",
///         "supported_language_codes": ["es-ES"],
///         "fallback_action": "escalate",
///     },
///     time_zone_settings={
///         "time_zone": "America/Los_Angeles",
///     })
/// agent = gcp.ces.Agent("agent",
///     location=app.location,
///     app=app.app_id,
///     agent_id="agent-id",
///     display_name="Example Agent",
///     instruction="You are a helpful assistant.",
///     llm_agent={})
/// association = gcp.ces.AppRootAgentAssociation("association",
///     location=app.location,
///     app_id=app.app_id,
///     agent_id=agent.agent_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new Gcp.Ces.App("app", new()
///     {
///         Location = "eu",
///         AppId = "app-id",
///         DisplayName = "Example App app-id",
///         LanguageSettings = new Gcp.Ces.Inputs.AppLanguageSettingsArgs
///         {
///             DefaultLanguageCode = "en-US",
///             SupportedLanguageCodes = new[]
///             {
///                 "es-ES",
///             },
///             FallbackAction = "escalate",
///         },
///         TimeZoneSettings = new Gcp.Ces.Inputs.AppTimeZoneSettingsArgs
///         {
///             TimeZone = "America/Los_Angeles",
///         },
///     });
///
///     var agent = new Gcp.Ces.Agent("agent", new()
///     {
///         Location = app.Location,
///         App = app.AppId,
///         AgentId = "agent-id",
///         DisplayName = "Example Agent",
///         Instruction = "You are a helpful assistant.",
///         LlmAgent = new() { },
///     });
///
///     var association = new Gcp.Ces.AppRootAgentAssociation("association", new()
///     {
///         Location = app.Location,
///         AppId = app.AppId,
///         AgentId = agent.AgentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/ces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := ces.NewApp(ctx, "app", &ces.AppArgs{
/// 			Location:    pulumi.String("eu"),
/// 			AppId:       pulumi.String("app-id"),
/// 			DisplayName: pulumi.String("Example App app-id"),
/// 			LanguageSettings: &ces.AppLanguageSettingsArgs{
/// 				DefaultLanguageCode: pulumi.String("en-US"),
/// 				SupportedLanguageCodes: pulumi.StringArray{
/// 					pulumi.String("es-ES"),
/// 				},
/// 				FallbackAction: pulumi.String("escalate"),
/// 			},
/// 			TimeZoneSettings: &ces.AppTimeZoneSettingsArgs{
/// 				TimeZone: pulumi.String("America/Los_Angeles"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agent, err := ces.NewAgent(ctx, "agent", &ces.AgentArgs{
/// 			Location:    app.Location,
/// 			App:         app.AppId,
/// 			AgentId:     pulumi.String("agent-id"),
/// 			DisplayName: pulumi.String("Example Agent"),
/// 			Instruction: pulumi.String("You are a helpful assistant."),
/// 			LlmAgent:    &ces.AgentLlmAgentArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ces.NewAppRootAgentAssociation(ctx, "association", &ces.AppRootAgentAssociationArgs{
/// 			Location: app.Location,
/// 			AppId:    app.AppId,
/// 			AgentId:  agent.AgentId,
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
/// resource "gcp_ces_app" "app" {
///   location     = "eu"
///   app_id       = "app-id"
///   display_name = "Example App app-id"
///   language_settings = {
///     default_language_code    = "en-US"
///     supported_language_codes = ["es-ES"]
///     fallback_action          = "escalate"
///   }
///   time_zone_settings = {
///     time_zone = "America/Los_Angeles"
///   }
/// }
/// resource "gcp_ces_agent" "agent" {
///   location     = gcp_ces_app.app.location
///   app          = gcp_ces_app.app.app_id
///   agent_id     = "agent-id"
///   display_name = "Example Agent"
///   instruction  = "You are a helpful assistant."
///   llm_agent    = {}
/// }
/// resource "gcp_ces_approotagentassociation" "association" {
///   location = gcp_ces_app.app.location
///   app_id   = gcp_ces_app.app.app_id
///   agent_id = gcp_ces_agent.agent.agent_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.ces.App;
/// import com.pulumi.gcp.ces.AppArgs;
/// import com.pulumi.gcp.ces.inputs.AppLanguageSettingsArgs;
/// import com.pulumi.gcp.ces.inputs.AppTimeZoneSettingsArgs;
/// import com.pulumi.gcp.ces.Agent;
/// import com.pulumi.gcp.ces.AgentArgs;
/// import com.pulumi.gcp.ces.inputs.AgentLlmAgentArgs;
/// import com.pulumi.gcp.ces.AppRootAgentAssociation;
/// import com.pulumi.gcp.ces.AppRootAgentAssociationArgs;
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
///         var app = new App("app", AppArgs.builder()
///             .location("eu")
///             .appId("app-id")
///             .displayName("Example App app-id")
///             .languageSettings(AppLanguageSettingsArgs.builder()
///                 .defaultLanguageCode("en-US")
///                 .supportedLanguageCodes("es-ES")
///                 .fallbackAction("escalate")
///                 .build())
///             .timeZoneSettings(AppTimeZoneSettingsArgs.builder()
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .build());
///
///         var agent = new Agent("agent", AgentArgs.builder()
///             .location(app.location())
///             .app(app.appId())
///             .agentId("agent-id")
///             .displayName("Example Agent")
///             .instruction("You are a helpful assistant.")
///             .llmAgent(AgentLlmAgentArgs.builder()
///                 .build())
///             .build());
///
///         var association = new AppRootAgentAssociation("association", AppRootAgentAssociationArgs.builder()
///             .location(app.location())
///             .appId(app.appId())
///             .agentId(agent.agentId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: gcp:ces:App
///     properties:
///       location: eu
///       appId: app-id
///       displayName: Example App app-id
///       languageSettings:
///         defaultLanguageCode: en-US
///         supportedLanguageCodes:
///           - es-ES
///         fallbackAction: escalate
///       timeZoneSettings:
///         timeZone: America/Los_Angeles
///   agent:
///     type: gcp:ces:Agent
///     properties:
///       location: ${app.location}
///       app: ${app.appId}
///       agentId: agent-id
///       displayName: Example Agent
///       instruction: You are a helpful assistant.
///       llmAgent: {}
///   association:
///     type: gcp:ces:AppRootAgentAssociation
///     properties:
///       location: ${app.location}
///       appId: ${app.appId}
///       agentId: ${agent.agentId}
/// ```
///
///
/// ## Import
///
/// AppRootAgentAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app_id}}/agents/{{agent_id}}`
/// * `{{project}}/{{location}}/{{app_id}}/{{agent_id}}`
/// * `{{location}}/{{app_id}}/{{agent_id}}`
///
///
/// When using the `pulumi import` command, AppRootAgentAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/appRootAgentAssociation:AppRootAgentAssociation default projects/{{project}}/locations/{{location}}/apps/{{app_id}}/agents/{{agent_id}}
/// $ pulumi import gcp:ces/appRootAgentAssociation:AppRootAgentAssociation default {{project}}/{{location}}/{{app_id}}/{{agent_id}}
/// $ pulumi import gcp:ces/appRootAgentAssociation:AppRootAgentAssociation default {{location}}/{{app_id}}/{{agent_id}}
/// ```
class AppRootAgentAssociation extends pulumi.CustomResource {
  /// The ID or fully qualified resource name of the agent to associate as the
  /// root agent of the app.
  late final pulumi.Output<String> agentId;
  /// The ID of the App. Used to construct the app resource name.
  late final pulumi.Output<String> appId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location of the App.
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [AppRootAgentAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppRootAgentAssociation]. {@macro pulumi_ces_app_root_agent_association_app_root_agent_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppRootAgentAssociation(
    String name, {
    AppRootAgentAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/appRootAgentAssociation:AppRootAgentAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    agentId = registerOutput<String>('agentId');
    appId = registerOutput<String>('appId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [AppRootAgentAssociation] resource's state with the given [name] and [id].
  static AppRootAgentAssociation get(
    String name,
    pulumi.Input<String> id, {
    AppRootAgentAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AppRootAgentAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AppRootAgentAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:ces/appRootAgentAssociation:AppRootAgentAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentId = registerOutput<String>('agentId');
    appId = registerOutput<String>('appId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [AppRootAgentAssociation] resource.
  AppRootAgentAssociation.reference(String urn)
    : super(
        'gcp:ces/appRootAgentAssociation:AppRootAgentAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentId = registerOutput<String>('agentId');
    appId = registerOutput<String>('appId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    project = registerOutput<String>('project');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intent_args.dart';
import 'intent_state.dart';

/// Represents a Dialogflow intent. Intents convert a number of user expressions or patterns into an action. An action
/// is an extraction of a user command or sentence semantics.
///
///
/// To get more information about Intent, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.intents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Intent Basic
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
/// const basicIntent = new gcp.diagflow.Intent("basic_intent", {displayName: "basic-intent"}, {
///     dependsOn: [basicAgent],
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
/// basic_intent = gcp.diagflow.Intent("basic_intent", display_name="basic-intent",
/// opts = pulumi.ResourceOptions(depends_on=[basic_agent]))
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
///     var basicIntent = new Gcp.Diagflow.Intent("basic_intent", new()
///     {
///         DisplayName = "basic-intent",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             basicAgent,
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
/// 		basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// 			DisplayName:         pulumi.String("example_agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewIntent(ctx, "basic_intent", &diagflow.IntentArgs{
/// 			DisplayName: pulumi.String("basic-intent"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			basicAgent,
/// 		}))
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
/// import com.pulumi.gcp.diagflow.Intent;
/// import com.pulumi.gcp.diagflow.IntentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var basicIntent = new Intent("basicIntent", IntentArgs.builder()
///             .displayName("basic-intent")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(basicAgent)
///                 .build());
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
///   basicIntent:
///     type: gcp:diagflow:Intent
///     name: basic_intent
///     properties:
///       displayName: basic-intent
///     options:
///       dependsOn:
///         - ${basicAgent}
/// ```
///
/// ### Dialogflow Intent Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const agentProject = new gcp.organizations.Project("agent_project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const agentProjectService = new gcp.projects.Service("agent_project", {
///     project: agentProject.projectId,
///     service: "dialogflow.googleapis.com",
///     disableDependentServices: false,
/// });
/// const dialogflowServiceAccount = new gcp.serviceaccount.Account("dialogflow_service_account", {accountId: "my-account"});
/// const agentCreate = new gcp.projects.IAMMember("agent_create", {
///     project: agentProjectService.project,
///     role: "roles/dialogflow.admin",
///     member: pulumi.interpolate`serviceAccount:${dialogflowServiceAccount.email}`,
/// });
/// const basicAgent = new gcp.diagflow.Agent("basic_agent", {
///     project: agentProject.projectId,
///     displayName: "example_agent",
///     defaultLanguageCode: "en",
///     timeZone: "America/New_York",
/// });
/// const fullIntent = new gcp.diagflow.Intent("full_intent", {
///     project: agentProject.projectId,
///     displayName: "full-intent",
///     webhookState: "WEBHOOK_STATE_ENABLED",
///     priority: 1,
///     isFallback: false,
///     mlDisabled: true,
///     action: "some_action",
///     resetContexts: true,
///     inputContextNames: [pulumi.interpolate`projects/${agentProject.projectId}/agent/sessions/-/contexts/some_id`],
///     events: ["some_event"],
///     defaultResponsePlatforms: [
///         "FACEBOOK",
///         "SLACK",
///     ],
/// }, {
///     dependsOn: [basicAgent],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// agent_project = gcp.organizations.Project("agent_project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// agent_project_service = gcp.projects.Service("agent_project",
///     project=agent_project.project_id,
///     service="dialogflow.googleapis.com",
///     disable_dependent_services=False)
/// dialogflow_service_account = gcp.serviceaccount.Account("dialogflow_service_account", account_id="my-account")
/// agent_create = gcp.projects.IAMMember("agent_create",
///     project=agent_project_service.project,
///     role="roles/dialogflow.admin",
///     member=dialogflow_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// basic_agent = gcp.diagflow.Agent("basic_agent",
///     project=agent_project.project_id,
///     display_name="example_agent",
///     default_language_code="en",
///     time_zone="America/New_York")
/// full_intent = gcp.diagflow.Intent("full_intent",
///     project=agent_project.project_id,
///     display_name="full-intent",
///     webhook_state="WEBHOOK_STATE_ENABLED",
///     priority=1,
///     is_fallback=False,
///     ml_disabled=True,
///     action="some_action",
///     reset_contexts=True,
///     input_context_names=[agent_project.project_id.apply(lambda project_id: f"projects/{project_id}/agent/sessions/-/contexts/some_id")],
///     events=["some_event"],
///     default_response_platforms=[
///         "FACEBOOK",
///         "SLACK",
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[basic_agent]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentProject = new Gcp.Organizations.Project("agent_project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var agentProjectService = new Gcp.Projects.Service("agent_project", new()
///     {
///         Project = agentProject.ProjectId,
///         ServiceName = "dialogflow.googleapis.com",
///         DisableDependentServices = false,
///     });
///
///     var dialogflowServiceAccount = new Gcp.ServiceAccount.Account("dialogflow_service_account", new()
///     {
///         AccountId = "my-account",
///     });
///
///     var agentCreate = new Gcp.Projects.IAMMember("agent_create", new()
///     {
///         Project = agentProjectService.Project,
///         Role = "roles/dialogflow.admin",
///         Member = dialogflowServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var basicAgent = new Gcp.Diagflow.Agent("basic_agent", new()
///     {
///         Project = agentProject.ProjectId,
///         DisplayName = "example_agent",
///         DefaultLanguageCode = "en",
///         TimeZone = "America/New_York",
///     });
///
///     var fullIntent = new Gcp.Diagflow.Intent("full_intent", new()
///     {
///         Project = agentProject.ProjectId,
///         DisplayName = "full-intent",
///         WebhookState = "WEBHOOK_STATE_ENABLED",
///         Priority = 1,
///         IsFallback = false,
///         MlDisabled = true,
///         Action = "some_action",
///         ResetContexts = true,
///         InputContextNames = new[]
///         {
///             agentProject.ProjectId.Apply(projectId => $"projects/{projectId}/agent/sessions/-/contexts/some_id"),
///         },
///         Events = new[]
///         {
///             "some_event",
///         },
///         DefaultResponsePlatforms = new[]
///         {
///             "FACEBOOK",
///             "SLACK",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             basicAgent,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		agentProject, err := organizations.NewProject(ctx, "agent_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		agentProjectService, err := projects.NewService(ctx, "agent_project", &projects.ServiceArgs{
/// 			Project:                  agentProject.ProjectId,
/// 			Service:                  pulumi.String("dialogflow.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dialogflowServiceAccount, err := serviceaccount.NewAccount(ctx, "dialogflow_service_account", &serviceaccount.AccountArgs{
/// 			AccountId: pulumi.String("my-account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "agent_create", &projects.IAMMemberArgs{
/// 			Project: agentProjectService.Project,
/// 			Role:    pulumi.String("roles/dialogflow.admin"),
/// 			Member: dialogflowServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basicAgent, err := diagflow.NewAgent(ctx, "basic_agent", &diagflow.AgentArgs{
/// 			Project:             agentProject.ProjectId,
/// 			DisplayName:         pulumi.String("example_agent"),
/// 			DefaultLanguageCode: pulumi.String("en"),
/// 			TimeZone:            pulumi.String("America/New_York"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = diagflow.NewIntent(ctx, "full_intent", &diagflow.IntentArgs{
/// 			Project:       agentProject.ProjectId,
/// 			DisplayName:   pulumi.String("full-intent"),
/// 			WebhookState:  pulumi.String("WEBHOOK_STATE_ENABLED"),
/// 			Priority:      pulumi.Int(1),
/// 			IsFallback:    pulumi.Bool(false),
/// 			MlDisabled:    pulumi.Bool(true),
/// 			Action:        pulumi.String("some_action"),
/// 			ResetContexts: pulumi.Bool(true),
/// 			InputContextNames: pulumi.StringArray{
/// 				agentProject.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 					return fmt.Sprintf("projects/%v/agent/sessions/-/contexts/some_id", projectId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Events: pulumi.StringArray{
/// 				pulumi.String("some_event"),
/// 			},
/// 			DefaultResponsePlatforms: pulumi.StringArray{
/// 				pulumi.String("FACEBOOK"),
/// 				pulumi.String("SLACK"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			basicAgent,
/// 		}))
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.diagflow.Agent;
/// import com.pulumi.gcp.diagflow.AgentArgs;
/// import com.pulumi.gcp.diagflow.Intent;
/// import com.pulumi.gcp.diagflow.IntentArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var agentProject = new Project("agentProject", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var agentProjectService = new Service("agentProjectService", ServiceArgs.builder()
///             .project(agentProject.projectId())
///             .service("dialogflow.googleapis.com")
///             .disableDependentServices(false)
///             .build());
///
///         var dialogflowServiceAccount = new Account("dialogflowServiceAccount", AccountArgs.builder()
///             .accountId("my-account")
///             .build());
///
///         var agentCreate = new IAMMember("agentCreate", IAMMemberArgs.builder()
///             .project(agentProjectService.project())
///             .role("roles/dialogflow.admin")
///             .member(dialogflowServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var basicAgent = new Agent("basicAgent", AgentArgs.builder()
///             .project(agentProject.projectId())
///             .displayName("example_agent")
///             .defaultLanguageCode("en")
///             .timeZone("America/New_York")
///             .build());
///
///         var fullIntent = new Intent("fullIntent", IntentArgs.builder()
///             .project(agentProject.projectId())
///             .displayName("full-intent")
///             .webhookState("WEBHOOK_STATE_ENABLED")
///             .priority(1)
///             .isFallback(false)
///             .mlDisabled(true)
///             .action("some_action")
///             .resetContexts(true)
///             .inputContextNames(agentProject.projectId().applyValue(_projectId -> String.format("projects/%s/agent/sessions/-/contexts/some_id", _projectId)))
///             .events("some_event")
///             .defaultResponsePlatforms(
///                 "FACEBOOK",
///                 "SLACK")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(basicAgent)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   agentProject:
///     type: gcp:organizations:Project
///     name: agent_project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   agentProjectService:
///     type: gcp:projects:Service
///     name: agent_project
///     properties:
///       project: ${agentProject.projectId}
///       service: dialogflow.googleapis.com
///       disableDependentServices: false
///   dialogflowServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: dialogflow_service_account
///     properties:
///       accountId: my-account
///   agentCreate:
///     type: gcp:projects:IAMMember
///     name: agent_create
///     properties:
///       project: ${agentProjectService.project}
///       role: roles/dialogflow.admin
///       member: serviceAccount:${dialogflowServiceAccount.email}
///   basicAgent:
///     type: gcp:diagflow:Agent
///     name: basic_agent
///     properties:
///       project: ${agentProject.projectId}
///       displayName: example_agent
///       defaultLanguageCode: en
///       timeZone: America/New_York
///   fullIntent:
///     type: gcp:diagflow:Intent
///     name: full_intent
///     properties:
///       project: ${agentProject.projectId}
///       displayName: full-intent
///       webhookState: WEBHOOK_STATE_ENABLED
///       priority: 1
///       isFallback: false
///       mlDisabled: true
///       action: some_action
///       resetContexts: true
///       inputContextNames:
///         - projects/${agentProject.projectId}/agent/sessions/-/contexts/some_id
///       events:
///         - some_event
///       defaultResponsePlatforms:
///         - FACEBOOK
///         - SLACK
///     options:
///       dependsOn:
///         - ${basicAgent}
/// ```
///
///
/// ## Import
///
/// Intent can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Intent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/intent:Intent default {{name}}
/// ```
class Intent extends pulumi.CustomResource {
  /// The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  late final pulumi.Output<String> action;

  /// The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// (i.e. default platform).
  /// Each value may be one of: `FACEBOOK`, `SLACK`, `TELEGRAM`, `KIK`, `SKYPE`, `LINE`, `VIBER`, `ACTIONS_ON_GOOGLE`, `GOOGLE_HANGOUTS`.
  late final pulumi.Output<List<String>?> defaultResponsePlatforms;

  /// The name of this intent to be displayed on the console.
  late final pulumi.Output<String> displayName;

  /// The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// the contexts must be present in the active user session for an event to trigger this intent. See the
  /// [events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details.
  late final pulumi.Output<List<String>?> events;

  /// Information about all followup intents that have this intent as a direct or indirect parent. We populate this field
  /// only in the output.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> followupIntentInfos;

  /// The list of context names required for this intent to be triggered.
  /// Format: projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;.
  late final pulumi.Output<List<String>?> inputContextNames;

  /// Indicates whether this is a fallback intent.
  late final pulumi.Output<bool> isFallback;

  /// Indicates whether Machine Learning is disabled for the intent.
  /// Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
  /// ONLY match mode. Also, auto-markup in the UI is turned off.
  late final pulumi.Output<bool> mlDisabled;

  /// The unique identifier of this intent.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  late final pulumi.Output<String> name;

  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  late final pulumi.Output<String> parentFollowupIntentName;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  /// to the Normal priority in the console.
  /// - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Indicates whether to delete all contexts in the current session when this intent is matched.
  late final pulumi.Output<bool> resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup
  /// intents chain for this intent.
  /// Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;.
  late final pulumi.Output<String> rootFollowupIntentName;

  /// Indicates whether webhooks are enabled for the intent.
  /// * WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
  /// * WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  /// Possible values are: `WEBHOOK_STATE_ENABLED`, `WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING`.
  late final pulumi.Output<String> webhookState;

  /// Creates a new [Intent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Intent]. {@macro pulumi_diagflow_intent_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Intent(String name, {IntentArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:diagflow/intent:Intent',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    action = registerOutput<String>('action');
    defaultResponsePlatforms = registerOutput<List<String>?>(
      'defaultResponsePlatforms',
    );
    displayName = registerOutput<String>('displayName');
    events = registerOutput<List<String>?>('events');
    followupIntentInfos = registerOutput<List<Map<String, dynamic>>>(
      'followupIntentInfos',
    );
    inputContextNames = registerOutput<List<String>?>('inputContextNames');
    isFallback = registerOutput<bool>('isFallback');
    mlDisabled = registerOutput<bool>('mlDisabled');
    this.name = registerOutput<String>('name');
    parentFollowupIntentName = registerOutput<String>(
      'parentFollowupIntentName',
    );
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    resetContexts = registerOutput<bool>('resetContexts');
    rootFollowupIntentName = registerOutput<String>('rootFollowupIntentName');
    webhookState = registerOutput<String>('webhookState');
  }

  /// Gets an existing [Intent] resource's state with the given [name] and [id].
  static Intent get(
    String name,
    pulumi.Input<String> id, {
    IntentState? state,
  }) {
    return Intent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Intent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:diagflow/intent:Intent',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    defaultResponsePlatforms = registerOutput<List<String>?>(
      'defaultResponsePlatforms',
    );
    displayName = registerOutput<String>('displayName');
    events = registerOutput<List<String>?>('events');
    followupIntentInfos = registerOutput<List<Map<String, dynamic>>>(
      'followupIntentInfos',
    );
    inputContextNames = registerOutput<List<String>?>('inputContextNames');
    isFallback = registerOutput<bool>('isFallback');
    mlDisabled = registerOutput<bool>('mlDisabled');
    this.name = registerOutput<String>('name');
    parentFollowupIntentName = registerOutput<String>(
      'parentFollowupIntentName',
    );
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    resetContexts = registerOutput<bool>('resetContexts');
    rootFollowupIntentName = registerOutput<String>('rootFollowupIntentName');
    webhookState = registerOutput<String>('webhookState');
  }
}

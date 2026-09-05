import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_agent_anomaly_detection_scope_args.dart';
import 'ai_agent_anomaly_detection_scope_state.dart';

/// An Agent Anomaly Detection (AAD) scope defines the Cloud Logging and
/// Observability buckets that AAD monitors for anomalous agent behavior within
/// a location. Creating a scope provisions a dedicated tenant project for
/// detection. Only one scope may exist per location.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about AgentAnomalyDetectionScope, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1beta1/projects.locations.agentAnomalyDetectionScopes)
/// * How-to Guides
/// * [Agent Anomaly Detection](https://cloud.google.com/vertex-ai/generative-ai/docs/agent-engine/)
///
/// ## Example Usage
///
/// ### Vertex Ai Agent Anomaly Detection Scope Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const aad_log_bucket = new gcp.logging.ProjectBucketConfig("aad-log-bucket", {
///     project: project.then(project => project.projectId),
///     location: "us",
///     retentionDays: 30,
///     bucketId: "aad-log-bucket",
///     enableAnalytics: true,
/// });
/// const scope = new gcp.vertex.AiAgentAnomalyDetectionScope("scope", {
///     region: "us",
///     agentAnomalyDetectionScopeId: "agent-anomaly-detection-scope",
///     displayName: "Basic AAD scope",
///     logBuckets: [aad_log_bucket.id],
///     observabilityBuckets: [project.then(project => `projects/${project.projectId}/locations/us/buckets/_Trace/datasets/Spans`)],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// aad_log_bucket = gcp.logging.ProjectBucketConfig("aad-log-bucket",
///     project=project.project_id,
///     location="us",
///     retention_days=30,
///     bucket_id="aad-log-bucket",
///     enable_analytics=True)
/// scope = gcp.vertex.AiAgentAnomalyDetectionScope("scope",
///     region="us",
///     agent_anomaly_detection_scope_id="agent-anomaly-detection-scope",
///     display_name="Basic AAD scope",
///     log_buckets=[aad_log_bucket.id],
///     observability_buckets=[f"projects/{project.project_id}/locations/us/buckets/_Trace/datasets/Spans"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var aad_log_bucket = new Gcp.Logging.ProjectBucketConfig("aad-log-bucket", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Location = "us",
///         RetentionDays = 30,
///         BucketId = "aad-log-bucket",
///         EnableAnalytics = true,
///     });
///
///     var scope = new Gcp.Vertex.AiAgentAnomalyDetectionScope("scope", new()
///     {
///         Region = "us",
///         AgentAnomalyDetectionScopeId = "agent-anomaly-detection-scope",
///         DisplayName = "Basic AAD scope",
///         LogBuckets = new[]
///         {
///             aad_log_bucket.Id,
///         },
///         ObservabilityBuckets = new[]
///         {
///             $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us/buckets/_Trace/datasets/Spans",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vertex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		aad_log_bucket, err := logging.NewProjectBucketConfig(ctx, "aad-log-bucket", &logging.ProjectBucketConfigArgs{
/// 			Project:         pulumi.String(project.ProjectId),
/// 			Location:        pulumi.String("us"),
/// 			RetentionDays:   pulumi.Int(30),
/// 			BucketId:        pulumi.String("aad-log-bucket"),
/// 			EnableAnalytics: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vertex.NewAiAgentAnomalyDetectionScope(ctx, "scope", &vertex.AiAgentAnomalyDetectionScopeArgs{
/// 			Region:                       pulumi.String("us"),
/// 			AgentAnomalyDetectionScopeId: pulumi.String("agent-anomaly-detection-scope"),
/// 			DisplayName:                  pulumi.String("Basic AAD scope"),
/// 			LogBuckets: pulumi.StringArray{
/// 				aad_log_bucket.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ObservabilityBuckets: pulumi.StringArray{
/// 				pulumi.Sprintf("projects/%v/locations/us/buckets/_Trace/datasets/Spans", project.ProjectId),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_logging_projectbucketconfig" "aad-log-bucket" {
///   project          = data.gcp_organizations_getproject.project.project_id
///   location         = "us"
///   retention_days   = 30
///   bucket_id        = "aad-log-bucket"
///   enable_analytics = true
/// }
/// resource "gcp_vertex_aiagentanomalydetectionscope" "scope" {
///   region                           = "us"
///   agent_anomaly_detection_scope_id = "agent-anomaly-detection-scope"
///   display_name                     = "Basic AAD scope"
///   log_buckets                      = [gcp_logging_projectbucketconfig.aad-log-bucket.id]
///   observability_buckets            = ["projects/${data.gcp_organizations_getproject.project.project_id}/locations/us/buckets/_Trace/datasets/Spans"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.logging.ProjectBucketConfig;
/// import com.pulumi.gcp.logging.ProjectBucketConfigArgs;
/// import com.pulumi.gcp.vertex.AiAgentAnomalyDetectionScope;
/// import com.pulumi.gcp.vertex.AiAgentAnomalyDetectionScopeArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var aad_log_bucket = new ProjectBucketConfig("aad-log-bucket", ProjectBucketConfigArgs.builder()
///             .project(project.projectId())
///             .location("us")
///             .retentionDays(30)
///             .bucketId("aad-log-bucket")
///             .enableAnalytics(true)
///             .build());
///
///         var scope = new AiAgentAnomalyDetectionScope("scope", AiAgentAnomalyDetectionScopeArgs.builder()
///             .region("us")
///             .agentAnomalyDetectionScopeId("agent-anomaly-detection-scope")
///             .displayName("Basic AAD scope")
///             .logBuckets(aad_log_bucket.id())
///             .observabilityBuckets(String.format("projects/%s/locations/us/buckets/_Trace/datasets/Spans", project.projectId()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   aad-log-bucket:
///     type: gcp:logging:ProjectBucketConfig
///     properties:
///       project: ${project.projectId}
///       location: us
///       retentionDays: 30
///       bucketId: aad-log-bucket
///       enableAnalytics: true
///   scope:
///     type: gcp:vertex:AiAgentAnomalyDetectionScope
///     properties:
///       region: us
///       agentAnomalyDetectionScopeId: agent-anomaly-detection-scope
///       displayName: Basic AAD scope
///       logBuckets:
///         - ${["aad-log-bucket"].id}
///       observabilityBuckets:
///         - projects/${project.projectId}/locations/us/buckets/_Trace/datasets/Spans
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// AgentAnomalyDetectionScope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/agentAnomalyDetectionScopes/{{agent_anomaly_detection_scope_id}}`
/// * `{{project}}/{{region}}/{{agent_anomaly_detection_scope_id}}`
/// * `{{region}}/{{agent_anomaly_detection_scope_id}}`
/// * `{{agent_anomaly_detection_scope_id}}`
///
///
/// When using the `pulumi import` command, AgentAnomalyDetectionScope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope default projects/{{project}}/locations/{{region}}/agentAnomalyDetectionScopes/{{agent_anomaly_detection_scope_id}}
/// $ pulumi import gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope default {{project}}/{{region}}/{{agent_anomaly_detection_scope_id}}
/// $ pulumi import gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope default {{region}}/{{agent_anomaly_detection_scope_id}}
/// $ pulumi import gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope default {{agent_anomaly_detection_scope_id}}
/// ```
class AiAgentAnomalyDetectionScope extends pulumi.CustomResource {
  /// The ID to use for the AgentAnomalyDetectionScope, which will become the
  /// final component of the scope's resource name. This value should be 1-63
  /// characters and valid characters are /[a-z][0-9]-/.
  late final pulumi.Output<String> agentAnomalyDetectionScopeId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User provided display name of the AgentAnomalyDetectionScope.
  late final pulumi.Output<String?> displayName;
  /// Customer owned Cloud Logging bucket resource names attached to this scope.
  /// Format: projects/{{project}}/locations/{{location}}/buckets/{{bucket}}.
  late final pulumi.Output<List<String>> logBuckets;
  /// The resource name of the AgentAnomalyDetectionScope, in the format
  /// projects/{{project}}/locations/{{location}}/agentAnomalyDetectionScopes/{{agent_anomaly_detection_scope}}
  late final pulumi.Output<String> name;
  /// Customer owned Cloud Observability bucket resource names attached to this
  /// scope.
  /// Format: projects/{{project}}/locations/{{location}}/buckets/{{bucket}}/datasets/{{dataset}}.
  late final pulumi.Output<List<String>> observabilityBuckets;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The region of the AgentAnomalyDetectionScope, e.g. us-central1.
  late final pulumi.Output<String> region;
  /// The lifecycle state of the scope.
  late final pulumi.Output<String> state;

  /// Creates a new [AiAgentAnomalyDetectionScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiAgentAnomalyDetectionScope]. {@macro pulumi_vertex_ai_agent_anomaly_detection_scope_ai_agent_anomaly_detection_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiAgentAnomalyDetectionScope(
    String name, {
    AiAgentAnomalyDetectionScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    agentAnomalyDetectionScopeId = registerOutput<String>('agentAnomalyDetectionScopeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    logBuckets = registerOutput<List<String>>('logBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    observabilityBuckets = registerOutput<List<String>>('observabilityBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [AiAgentAnomalyDetectionScope] resource's state with the given [name] and [id].
  static AiAgentAnomalyDetectionScope get(
    String name,
    pulumi.Input<String> id, {
    AiAgentAnomalyDetectionScopeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiAgentAnomalyDetectionScope._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiAgentAnomalyDetectionScope._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    agentAnomalyDetectionScopeId = registerOutput<String>('agentAnomalyDetectionScopeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    logBuckets = registerOutput<List<String>>('logBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    observabilityBuckets = registerOutput<List<String>>('observabilityBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [AiAgentAnomalyDetectionScope] resource.
  AiAgentAnomalyDetectionScope.reference(String urn)
    : super(
        'gcp:vertex/aiAgentAnomalyDetectionScope:AiAgentAnomalyDetectionScope',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    agentAnomalyDetectionScopeId = registerOutput<String>('agentAnomalyDetectionScopeId');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    logBuckets = registerOutput<List<String>>('logBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    observabilityBuckets = registerOutput<List<String>>('observabilityBuckets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
  }
}

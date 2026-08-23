import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_sequence_args.dart';
import 'rollout_sequence_auto_upgrade_config.dart';
import 'rollout_sequence_ignored_clusters_selector.dart';
import 'rollout_sequence_state.dart';

/// RolloutSequence defines the desired order of upgrades.
///
///
/// To get more information about RolloutSequence, see:
///
/// * [API documentation](https://docs.cloud.google.com/kubernetes-engine/fleet-management/docs/reference/rest/v1beta/projects.locations.rolloutSequences)
/// * How-to Guides
/// * [Rollout Sequencing Overview](https://cloud.google.com/kubernetes-engine/docs/concepts/rollout-sequencing-custom-stages/about-rollout-sequencing)
///
/// ## Example Usage
///
/// ### Gke Hub Rollout Sequence Create
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "rs-project",
///     name: "rs-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const gkehub = new gcp.projects.Service("gkehub", {
///     project: project.projectId,
///     service: "gkehub.googleapis.com",
/// });
/// // wait for API enablement
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [gkehub],
/// });
/// const _default = new gcp.gkehub.Fleet("default", {
///     displayName: "rs-fleet",
///     project: project.projectId,
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// const rolloutSequence = new gcp.gkehub.RolloutSequence("rollout_sequence", {
///     project: project.projectId,
///     rolloutSequenceId: "rs-basic",
///     displayName: "Basic Rollout Sequence",
///     ignoredClustersSelector: {
///         labelSelector: "resource.labels.ignored == 'true'",
///     },
///     stages: [{
///         fleetProjects: [pulumi.interpolate`projects/${project.projectId}`],
///         soakDuration: "1h",
///     }],
///     autoUpgradeConfig: {
///         rolloutCreationScope: {
///             upgradeTypes: [
///                 "CONTROL_PLANE_MINOR",
///                 "CONTROL_PLANE_PATCH",
///                 "NODE_MINOR",
///                 "NODE_PATCH",
///             ],
///         },
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="rs-project",
///     name="rs-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// gkehub = gcp.projects.Service("gkehub",
///     project=project.project_id,
///     service="gkehub.googleapis.com")
/// # wait for API enablement
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[gkehub]))
/// default = gcp.gkehub.Fleet("default",
///     display_name="rs-fleet",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
/// rollout_sequence = gcp.gkehub.RolloutSequence("rollout_sequence",
///     project=project.project_id,
///     rollout_sequence_id="rs-basic",
///     display_name="Basic Rollout Sequence",
///     ignored_clusters_selector={
///         "label_selector": "resource.labels.ignored == 'true'",
///     },
///     stages=[{
///         "fleet_projects": [project.project_id.apply(lambda project_id: f"projects/{project_id}")],
///         "soak_duration": "1h",
///     }],
///     auto_upgrade_config={
///         "rollout_creation_scope": {
///             "upgrade_types": [
///                 "CONTROL_PLANE_MINOR",
///                 "CONTROL_PLANE_PATCH",
///                 "NODE_MINOR",
///                 "NODE_PATCH",
///             ],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "rs-project",
///         Name = "rs-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var gkehub = new Gcp.Projects.Service("gkehub", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "gkehub.googleapis.com",
///     });
///
///     // wait for API enablement
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gkehub,
///         },
///     });
///
///     var @default = new Gcp.GkeHub.Fleet("default", new()
///     {
///         DisplayName = "rs-fleet",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
///         },
///     });
///
///     var rolloutSequence = new Gcp.GkeHub.RolloutSequence("rollout_sequence", new()
///     {
///         Project = project.ProjectId,
///         RolloutSequenceId = "rs-basic",
///         DisplayName = "Basic Rollout Sequence",
///         IgnoredClustersSelector = new Gcp.GkeHub.Inputs.RolloutSequenceIgnoredClustersSelectorArgs
///         {
///             LabelSelector = "resource.labels.ignored == 'true'",
///         },
///         Stages = new[]
///         {
///             new Gcp.GkeHub.Inputs.RolloutSequenceStageArgs
///             {
///                 FleetProjects = new[]
///                 {
///                     project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///                 },
///                 SoakDuration = "1h",
///             },
///         },
///         AutoUpgradeConfig = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigArgs
///         {
///             RolloutCreationScope = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs
///             {
///                 UpgradeTypes = new[]
///                 {
///                     "CONTROL_PLANE_MINOR",
///                     "CONTROL_PLANE_PATCH",
///                     "NODE_MINOR",
///                     "NODE_PATCH",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("rs-project"),
/// 			Name:           pulumi.String("rs-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gkehub2, err := projects.NewService(ctx, "gkehub", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("gkehub.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// wait for API enablement
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gkehub2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := gkehub.NewFleet(ctx, "default", &gkehub.FleetArgs{
/// 			DisplayName: pulumi.String("rs-fleet"),
/// 			Project:     project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewRolloutSequence(ctx, "rollout_sequence", &gkehub.RolloutSequenceArgs{
/// 			Project:           project.ProjectId,
/// 			RolloutSequenceId: pulumi.String("rs-basic"),
/// 			DisplayName:       pulumi.String("Basic Rollout Sequence"),
/// 			IgnoredClustersSelector: &gkehub.RolloutSequenceIgnoredClustersSelectorArgs{
/// 				LabelSelector: pulumi.String("resource.labels.ignored == 'true'"),
/// 			},
/// 			Stages: gkehub.RolloutSequenceStageArray{
/// 				&gkehub.RolloutSequenceStageArgs{
/// 					FleetProjects: pulumi.StringArray{
/// 						project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v", projectId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					SoakDuration: pulumi.String("1h"),
/// 				},
/// 			},
/// 			AutoUpgradeConfig: &gkehub.RolloutSequenceAutoUpgradeConfigArgs{
/// 				RolloutCreationScope: &gkehub.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs{
/// 					UpgradeTypes: pulumi.StringArray{
/// 						pulumi.String("CONTROL_PLANE_MINOR"),
/// 						pulumi.String("CONTROL_PLANE_PATCH"),
/// 						pulumi.String("NODE_MINOR"),
/// 						pulumi.String("NODE_PATCH"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "rs-project"
///   name            = "rs-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "gkehub" {
///   project = gcp_organizations_project.project.project_id
///   service = "gkehub.googleapis.com"
/// }
/// // wait for API enablement
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_projects_service.gkehub]
///   create_duration = "120s"
/// }
/// resource "gcp_gkehub_fleet" "default" {
///   depends_on   = [time_sleep.wait_120_seconds]
///   display_name = "rs-fleet"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_gkehub_rolloutsequence" "rollout_sequence" {
///   depends_on          = [gcp_gkehub_fleet.default]
///   project             = gcp_organizations_project.project.project_id
///   rollout_sequence_id = "rs-basic"
///   display_name        = "Basic Rollout Sequence"
///   ignored_clusters_selector = {
///     label_selector = "resource.labels.ignored == 'true'"
///   }
///   stages {
///     fleet_projects = ["projects/${gcp_organizations_project.project.project_id}"]
///     soak_duration  = "1h"
///   }
///   auto_upgrade_config = {
///     rollout_creation_scope = {
///       upgrade_types = ["CONTROL_PLANE_MINOR", "CONTROL_PLANE_PATCH", "NODE_MINOR", "NODE_PATCH"]
///     }
///   }
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.gkehub.Fleet;
/// import com.pulumi.gcp.gkehub.FleetArgs;
/// import com.pulumi.gcp.gkehub.RolloutSequence;
/// import com.pulumi.gcp.gkehub.RolloutSequenceArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceIgnoredClustersSelectorArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceStageArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("rs-project")
///             .name("rs-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var gkehub = new Service("gkehub", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("gkehub.googleapis.com")
///             .build());
///
///         // wait for API enablement
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gkehub)
///                 .build());
///
///         var default_ = new Fleet("default", FleetArgs.builder()
///             .displayName("rs-fleet")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
///                 .build());
///
///         var rolloutSequence = new RolloutSequence("rolloutSequence", RolloutSequenceArgs.builder()
///             .project(project.projectId())
///             .rolloutSequenceId("rs-basic")
///             .displayName("Basic Rollout Sequence")
///             .ignoredClustersSelector(RolloutSequenceIgnoredClustersSelectorArgs.builder()
///                 .labelSelector("resource.labels.ignored == 'true'")
///                 .build())
///             .stages(RolloutSequenceStageArgs.builder()
///                 .fleetProjects(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///                 .soakDuration("1h")
///                 .build())
///             .autoUpgradeConfig(RolloutSequenceAutoUpgradeConfigArgs.builder()
///                 .rolloutCreationScope(RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs.builder()
///                     .upgradeTypes(
///                         "CONTROL_PLANE_MINOR",
///                         "CONTROL_PLANE_PATCH",
///                         "NODE_MINOR",
///                         "NODE_PATCH")
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: rs-project
///       name: rs-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   gkehub:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: gkehub.googleapis.com
///   # wait for API enablement
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${gkehub}
///   default:
///     type: gcp:gkehub:Fleet
///     properties:
///       displayName: rs-fleet
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
///   rolloutSequence:
///     type: gcp:gkehub:RolloutSequence
///     name: rollout_sequence
///     properties:
///       project: ${project.projectId}
///       rolloutSequenceId: rs-basic
///       displayName: Basic Rollout Sequence
///       ignoredClustersSelector:
///         labelSelector: resource.labels.ignored == 'true'
///       stages:
///         - fleetProjects:
///             - projects/${project.projectId}
///           soakDuration: 1h
///       autoUpgradeConfig:
///         rolloutCreationScope:
///           upgradeTypes:
///             - CONTROL_PLANE_MINOR
///             - CONTROL_PLANE_PATCH
///             - NODE_MINOR
///             - NODE_PATCH
///     options:
///       dependsOn:
///         - ${default}
/// ```
///
/// ### Gke Hub Rollout Sequence Update
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "rs-project",
///     name: "rs-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const gkehub = new gcp.projects.Service("gkehub", {
///     project: project.projectId,
///     service: "gkehub.googleapis.com",
/// });
/// // wait for API enablement
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [gkehub],
/// });
/// const _default = new gcp.gkehub.Fleet("default", {
///     displayName: "rs-fleet",
///     project: project.projectId,
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// const rolloutSequence = new gcp.gkehub.RolloutSequence("rollout_sequence", {
///     project: project.projectId,
///     rolloutSequenceId: "rs-basic",
///     displayName: "Modified Rollout Sequence",
///     ignoredClustersSelector: {
///         labelSelector: "resource.labels.ignored == 'super_true'",
///     },
///     stages: [
///         {
///             fleetProjects: [pulumi.interpolate`projects/${project.projectId}`],
///             clusterSelector: {
///                 labelSelector: "resource.labels.canary=='true'",
///             },
///             soakDuration: "2h",
///         },
///         {
///             fleetProjects: [pulumi.interpolate`projects/${project.projectId}`],
///             soakDuration: "1d",
///         },
///     ],
///     autoUpgradeConfig: {
///         rolloutCreationScope: {
///             upgradeTypes: [
///                 "CONTROL_PLANE_PATCH",
///                 "NODE_PATCH",
///             ],
///         },
///     },
///     labels: {
///         some_key: "some_value",
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="rs-project",
///     name="rs-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// gkehub = gcp.projects.Service("gkehub",
///     project=project.project_id,
///     service="gkehub.googleapis.com")
/// # wait for API enablement
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[gkehub]))
/// default = gcp.gkehub.Fleet("default",
///     display_name="rs-fleet",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
/// rollout_sequence = gcp.gkehub.RolloutSequence("rollout_sequence",
///     project=project.project_id,
///     rollout_sequence_id="rs-basic",
///     display_name="Modified Rollout Sequence",
///     ignored_clusters_selector={
///         "label_selector": "resource.labels.ignored == 'super_true'",
///     },
///     stages=[
///         {
///             "fleet_projects": [project.project_id.apply(lambda project_id: f"projects/{project_id}")],
///             "cluster_selector": {
///                 "label_selector": "resource.labels.canary=='true'",
///             },
///             "soak_duration": "2h",
///         },
///         {
///             "fleet_projects": [project.project_id.apply(lambda project_id: f"projects/{project_id}")],
///             "soak_duration": "1d",
///         },
///     ],
///     auto_upgrade_config={
///         "rollout_creation_scope": {
///             "upgrade_types": [
///                 "CONTROL_PLANE_PATCH",
///                 "NODE_PATCH",
///             ],
///         },
///     },
///     labels={
///         "some_key": "some_value",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "rs-project",
///         Name = "rs-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var gkehub = new Gcp.Projects.Service("gkehub", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "gkehub.googleapis.com",
///     });
///
///     // wait for API enablement
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gkehub,
///         },
///     });
///
///     var @default = new Gcp.GkeHub.Fleet("default", new()
///     {
///         DisplayName = "rs-fleet",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
///         },
///     });
///
///     var rolloutSequence = new Gcp.GkeHub.RolloutSequence("rollout_sequence", new()
///     {
///         Project = project.ProjectId,
///         RolloutSequenceId = "rs-basic",
///         DisplayName = "Modified Rollout Sequence",
///         IgnoredClustersSelector = new Gcp.GkeHub.Inputs.RolloutSequenceIgnoredClustersSelectorArgs
///         {
///             LabelSelector = "resource.labels.ignored == 'super_true'",
///         },
///         Stages = new[]
///         {
///             new Gcp.GkeHub.Inputs.RolloutSequenceStageArgs
///             {
///                 FleetProjects = new[]
///                 {
///                     project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///                 },
///                 ClusterSelector = new Gcp.GkeHub.Inputs.RolloutSequenceStageClusterSelectorArgs
///                 {
///                     LabelSelector = "resource.labels.canary=='true'",
///                 },
///                 SoakDuration = "2h",
///             },
///             new Gcp.GkeHub.Inputs.RolloutSequenceStageArgs
///             {
///                 FleetProjects = new[]
///                 {
///                     project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///                 },
///                 SoakDuration = "1d",
///             },
///         },
///         AutoUpgradeConfig = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigArgs
///         {
///             RolloutCreationScope = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs
///             {
///                 UpgradeTypes = new[]
///                 {
///                     "CONTROL_PLANE_PATCH",
///                     "NODE_PATCH",
///                 },
///             },
///         },
///         Labels =
///         {
///             { "some_key", "some_value" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("rs-project"),
/// 			Name:           pulumi.String("rs-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gkehub2, err := projects.NewService(ctx, "gkehub", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("gkehub.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// wait for API enablement
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gkehub2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := gkehub.NewFleet(ctx, "default", &gkehub.FleetArgs{
/// 			DisplayName: pulumi.String("rs-fleet"),
/// 			Project:     project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewRolloutSequence(ctx, "rollout_sequence", &gkehub.RolloutSequenceArgs{
/// 			Project:           project.ProjectId,
/// 			RolloutSequenceId: pulumi.String("rs-basic"),
/// 			DisplayName:       pulumi.String("Modified Rollout Sequence"),
/// 			IgnoredClustersSelector: &gkehub.RolloutSequenceIgnoredClustersSelectorArgs{
/// 				LabelSelector: pulumi.String("resource.labels.ignored == 'super_true'"),
/// 			},
/// 			Stages: gkehub.RolloutSequenceStageArray{
/// 				&gkehub.RolloutSequenceStageArgs{
/// 					FleetProjects: pulumi.StringArray{
/// 						project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v", projectId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					ClusterSelector: &gkehub.RolloutSequenceStageClusterSelectorArgs{
/// 						LabelSelector: pulumi.String("resource.labels.canary=='true'"),
/// 					},
/// 					SoakDuration: pulumi.String("2h"),
/// 				},
/// 				&gkehub.RolloutSequenceStageArgs{
/// 					FleetProjects: pulumi.StringArray{
/// 						project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v", projectId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					SoakDuration: pulumi.String("1d"),
/// 				},
/// 			},
/// 			AutoUpgradeConfig: &gkehub.RolloutSequenceAutoUpgradeConfigArgs{
/// 				RolloutCreationScope: &gkehub.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs{
/// 					UpgradeTypes: pulumi.StringArray{
/// 						pulumi.String("CONTROL_PLANE_PATCH"),
/// 						pulumi.String("NODE_PATCH"),
/// 					},
/// 				},
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"some_key": pulumi.String("some_value"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "rs-project"
///   name            = "rs-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "gkehub" {
///   project = gcp_organizations_project.project.project_id
///   service = "gkehub.googleapis.com"
/// }
/// // wait for API enablement
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_projects_service.gkehub]
///   create_duration = "120s"
/// }
/// resource "gcp_gkehub_fleet" "default" {
///   depends_on   = [time_sleep.wait_120_seconds]
///   display_name = "rs-fleet"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_gkehub_rolloutsequence" "rollout_sequence" {
///   depends_on          = [gcp_gkehub_fleet.default]
///   project             = gcp_organizations_project.project.project_id
///   rollout_sequence_id = "rs-basic"
///   display_name        = "Modified Rollout Sequence"
///   ignored_clusters_selector = {
///     label_selector = "resource.labels.ignored == 'super_true'"
///   }
///   stages {
///     fleet_projects = ["projects/${gcp_organizations_project.project.project_id}"]
///     cluster_selector = {
///       label_selector = "resource.labels.canary=='true'"
///     }
///     soak_duration = "2h"
///   }
///   stages {
///     fleet_projects = ["projects/${gcp_organizations_project.project.project_id}"]
///     soak_duration  = "1d"
///   }
///   auto_upgrade_config = {
///     rollout_creation_scope = {
///       upgrade_types = ["CONTROL_PLANE_PATCH", "NODE_PATCH"]
///     }
///   }
///   labels = {
///     "some_key" = "some_value"
///   }
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.gkehub.Fleet;
/// import com.pulumi.gcp.gkehub.FleetArgs;
/// import com.pulumi.gcp.gkehub.RolloutSequence;
/// import com.pulumi.gcp.gkehub.RolloutSequenceArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceIgnoredClustersSelectorArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceStageArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceStageClusterSelectorArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("rs-project")
///             .name("rs-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var gkehub = new Service("gkehub", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("gkehub.googleapis.com")
///             .build());
///
///         // wait for API enablement
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gkehub)
///                 .build());
///
///         var default_ = new Fleet("default", FleetArgs.builder()
///             .displayName("rs-fleet")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
///                 .build());
///
///         var rolloutSequence = new RolloutSequence("rolloutSequence", RolloutSequenceArgs.builder()
///             .project(project.projectId())
///             .rolloutSequenceId("rs-basic")
///             .displayName("Modified Rollout Sequence")
///             .ignoredClustersSelector(RolloutSequenceIgnoredClustersSelectorArgs.builder()
///                 .labelSelector("resource.labels.ignored == 'super_true'")
///                 .build())
///             .stages(
///                 RolloutSequenceStageArgs.builder()
///                     .fleetProjects(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///                     .clusterSelector(RolloutSequenceStageClusterSelectorArgs.builder()
///                         .labelSelector("resource.labels.canary=='true'")
///                         .build())
///                     .soakDuration("2h")
///                     .build(),
///                 RolloutSequenceStageArgs.builder()
///                     .fleetProjects(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///                     .soakDuration("1d")
///                     .build())
///             .autoUpgradeConfig(RolloutSequenceAutoUpgradeConfigArgs.builder()
///                 .rolloutCreationScope(RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs.builder()
///                     .upgradeTypes(
///                         "CONTROL_PLANE_PATCH",
///                         "NODE_PATCH")
///                     .build())
///                 .build())
///             .labels(Map.of("some_key", "some_value"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: rs-project
///       name: rs-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   gkehub:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: gkehub.googleapis.com
///   # wait for API enablement
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${gkehub}
///   default:
///     type: gcp:gkehub:Fleet
///     properties:
///       displayName: rs-fleet
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
///   rolloutSequence:
///     type: gcp:gkehub:RolloutSequence
///     name: rollout_sequence
///     properties:
///       project: ${project.projectId}
///       rolloutSequenceId: rs-basic
///       displayName: Modified Rollout Sequence
///       ignoredClustersSelector:
///         labelSelector: resource.labels.ignored == 'super_true'
///       stages:
///         - fleetProjects:
///             - projects/${project.projectId}
///           clusterSelector:
///             labelSelector: resource.labels.canary=='true'
///           soakDuration: 2h
///         - fleetProjects:
///             - projects/${project.projectId}
///           soakDuration: 1d
///       autoUpgradeConfig:
///         rolloutCreationScope:
///           upgradeTypes:
///             - CONTROL_PLANE_PATCH
///             - NODE_PATCH
///       labels:
///         some_key: some_value
///     options:
///       dependsOn:
///         - ${default}
/// ```
///
/// ### Gke Hub Rollout Sequence User Triggered Create
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "rs-project",
///     name: "rs-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable APIs in a deterministic order to avoid inconsistent VCR recordings
/// const gkehub = new gcp.projects.Service("gkehub", {
///     project: project.projectId,
///     service: "gkehub.googleapis.com",
/// });
/// const container = new gcp.projects.Service("container", {
///     project: project.projectId,
///     service: "container.googleapis.com",
/// }, {
///     dependsOn: [gkehub],
/// });
/// const compute = new gcp.projects.Service("compute", {
///     project: project.projectId,
///     service: "compute.googleapis.com",
/// }, {
///     dependsOn: [container],
/// });
/// // wait for API enablement
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [compute],
/// });
/// const _default = new gcp.gkehub.Fleet("default", {
///     displayName: "rs-fleet",
///     project: project.projectId,
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// const versions = gcp.container.getEngineVersionsOutput({
///     location: "us-central1-a",
///     project: project.projectId,
/// });
/// const primary = new gcp.container.Cluster("primary", {
///     project: project.projectId,
///     name: "rs-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     minMasterVersion: versions.apply(versions => versions.releaseChannelDefaultVersion?.REGULAR),
///     nodeVersion: versions.apply(versions => versions.releaseChannelDefaultVersion?.REGULAR),
///     deletionProtection: false,
///     releaseChannel: {
///         channel: "REGULAR",
///     },
///     resourceLabels: {
///         rs_test_cluster: "tf-test-_89239",
///     },
///     fleet: {
///         project: project.number,
///     },
/// }, {
///     dependsOn: [_default],
/// });
/// const rolloutSequence = new gcp.gkehub.RolloutSequence("rollout_sequence", {
///     project: project.projectId,
///     rolloutSequenceId: "rs-user-triggered",
///     displayName: "User Triggered Rollout Sequence",
///     minControlPlaneVersion: versions.apply(versions => versions.releaseChannelLatestVersion?.REGULAR),
///     ignoredClustersSelector: {
///         labelSelector: "!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')",
///     },
///     stages: [{
///         fleetProjects: [pulumi.interpolate`projects/${project.projectId}`],
///         soakDuration: "30s",
///     }],
///     autoUpgradeConfig: {
///         rolloutCreationScope: {
///             upgradeTypes: [],
///         },
///     },
/// }, {
///     dependsOn: [primary],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="rs-project",
///     name="rs-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable APIs in a deterministic order to avoid inconsistent VCR recordings
/// gkehub = gcp.projects.Service("gkehub",
///     project=project.project_id,
///     service="gkehub.googleapis.com")
/// container = gcp.projects.Service("container",
///     project=project.project_id,
///     service="container.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[gkehub]))
/// compute = gcp.projects.Service("compute",
///     project=project.project_id,
///     service="compute.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[container]))
/// # wait for API enablement
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[compute]))
/// default = gcp.gkehub.Fleet("default",
///     display_name="rs-fleet",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
/// versions = gcp.container.get_engine_versions_output(location="us-central1-a",
///     project=project.project_id)
/// primary = gcp.container.Cluster("primary",
///     project=project.project_id,
///     name="rs-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     min_master_version=versions.release_channel_default_version["REGULAR"],
///     node_version=versions.release_channel_default_version["REGULAR"],
///     deletion_protection=False,
///     release_channel={
///         "channel": "REGULAR",
///     },
///     resource_labels={
///         "rs_test_cluster": "tf-test-_89239",
///     },
///     fleet={
///         "project": project.number,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default]))
/// rollout_sequence = gcp.gkehub.RolloutSequence("rollout_sequence",
///     project=project.project_id,
///     rollout_sequence_id="rs-user-triggered",
///     display_name="User Triggered Rollout Sequence",
///     min_control_plane_version=versions.release_channel_latest_version["REGULAR"],
///     ignored_clusters_selector={
///         "label_selector": "!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')",
///     },
///     stages=[{
///         "fleet_projects": [project.project_id.apply(lambda project_id: f"projects/{project_id}")],
///         "soak_duration": "30s",
///     }],
///     auto_upgrade_config={
///         "rollout_creation_scope": {
///             "upgrade_types": [],
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[primary]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "rs-project",
///         Name = "rs-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable APIs in a deterministic order to avoid inconsistent VCR recordings
///     var gkehub = new Gcp.Projects.Service("gkehub", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "gkehub.googleapis.com",
///     });
///
///     var container = new Gcp.Projects.Service("container", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "container.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gkehub,
///         },
///     });
///
///     var compute = new Gcp.Projects.Service("compute", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "compute.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             container,
///         },
///     });
///
///     // wait for API enablement
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             compute,
///         },
///     });
///
///     var @default = new Gcp.GkeHub.Fleet("default", new()
///     {
///         DisplayName = "rs-fleet",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
///         },
///     });
///
///     var versions = Gcp.Container.GetEngineVersions.Invoke(new()
///     {
///         Location = "us-central1-a",
///         Project = project.ProjectId,
///     });
///
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Project = project.ProjectId,
///         Name = "rs-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         MinMasterVersion = versions.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelDefaultVersion?.REGULAR),
///         NodeVersion = versions.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelDefaultVersion?.REGULAR),
///         DeletionProtection = false,
///         ReleaseChannel = new Gcp.Container.Inputs.ClusterReleaseChannelArgs
///         {
///             Channel = "REGULAR",
///         },
///         ResourceLabels =
///         {
///             { "rs_test_cluster", "tf-test-_89239" },
///         },
///         Fleet = new Gcp.Container.Inputs.ClusterFleetArgs
///         {
///             Project = project.Number,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
///     var rolloutSequence = new Gcp.GkeHub.RolloutSequence("rollout_sequence", new()
///     {
///         Project = project.ProjectId,
///         RolloutSequenceId = "rs-user-triggered",
///         DisplayName = "User Triggered Rollout Sequence",
///         MinControlPlaneVersion = versions.Apply(getEngineVersionsResult => getEngineVersionsResult.ReleaseChannelLatestVersion?.REGULAR),
///         IgnoredClustersSelector = new Gcp.GkeHub.Inputs.RolloutSequenceIgnoredClustersSelectorArgs
///         {
///             LabelSelector = "!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')",
///         },
///         Stages = new[]
///         {
///             new Gcp.GkeHub.Inputs.RolloutSequenceStageArgs
///             {
///                 FleetProjects = new[]
///                 {
///                     project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///                 },
///                 SoakDuration = "30s",
///             },
///         },
///         AutoUpgradeConfig = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigArgs
///         {
///             RolloutCreationScope = new Gcp.GkeHub.Inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs
///             {
///                 UpgradeTypes = new() { },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             primary,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkehub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("rs-project"),
/// 			Name:           pulumi.String("rs-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable APIs in a deterministic order to avoid inconsistent VCR recordings
/// 		gkehub2, err := projects.NewService(ctx, "gkehub", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("gkehub.googleapis.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		container2, err := projects.NewService(ctx, "container", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("container.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gkehub2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		compute, err := projects.NewService(ctx, "compute", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("compute.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			container2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// wait for API enablement
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			compute,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := gkehub.NewFleet(ctx, "default", &gkehub.FleetArgs{
/// 			DisplayName: pulumi.String("rs-fleet"),
/// 			Project:     project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versions := container.GetEngineVersionsOutput(ctx, container.GetEngineVersionsOutputArgs{
/// 			Location: pulumi.String("us-central1-a"),
/// 			Project:  project.ProjectId,
/// 		}, nil)
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Project:          project.ProjectId,
/// 			Name:             pulumi.String("rs-cluster"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			MinMasterVersion: versions.ApplyT(func(versions container.GetEngineVersionsResult) (*string, error) {
/// 				return &versions.ReleaseChannelDefaultVersion.REGULAR, nil
/// 			}).(pulumi.StringPtrOutput),
/// 			NodeVersion: versions.ApplyT(func(versions container.GetEngineVersionsResult) (*string, error) {
/// 				return &versions.ReleaseChannelDefaultVersion.REGULAR, nil
/// 			}).(pulumi.StringPtrOutput),
/// 			DeletionProtection: pulumi.Bool(false),
/// 			ReleaseChannel: &container.ClusterReleaseChannelArgs{
/// 				Channel: pulumi.String("REGULAR"),
/// 			},
/// 			ResourceLabels: pulumi.StringMap{
/// 				"rs_test_cluster": pulumi.String("tf-test-_89239"),
/// 			},
/// 			Fleet: &container.ClusterFleetArgs{
/// 				Project: project.Number,
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkehub.NewRolloutSequence(ctx, "rollout_sequence", &gkehub.RolloutSequenceArgs{
/// 			Project:           project.ProjectId,
/// 			RolloutSequenceId: pulumi.String("rs-user-triggered"),
/// 			DisplayName:       pulumi.String("User Triggered Rollout Sequence"),
/// 			MinControlPlaneVersion: versions.ApplyT(func(versions container.GetEngineVersionsResult) (*string, error) {
/// 				return &versions.ReleaseChannelLatestVersion.REGULAR, nil
/// 			}).(pulumi.StringPtrOutput),
/// 			IgnoredClustersSelector: &gkehub.RolloutSequenceIgnoredClustersSelectorArgs{
/// 				LabelSelector: pulumi.String("!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')"),
/// 			},
/// 			Stages: gkehub.RolloutSequenceStageArray{
/// 				&gkehub.RolloutSequenceStageArgs{
/// 					FleetProjects: pulumi.StringArray{
/// 						project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 							return fmt.Sprintf("projects/%v", projectId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					SoakDuration: pulumi.String("30s"),
/// 				},
/// 			},
/// 			AutoUpgradeConfig: &gkehub.RolloutSequenceAutoUpgradeConfigArgs{
/// 				RolloutCreationScope: &gkehub.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs{
/// 					UpgradeTypes: pulumi.StringArray{},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			primary,
/// 		}))
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
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// data "gcp_container_getengineversions" "versions" {
///   location = "us-central1-a"
///   project  = gcp_organizations_project.project.project_id
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "rs-project"
///   name            = "rs-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// // Enable APIs in a deterministic order to avoid inconsistent VCR recordings
/// resource "gcp_projects_service" "gkehub" {
///   project = gcp_organizations_project.project.project_id
///   service = "gkehub.googleapis.com"
/// }
/// resource "gcp_projects_service" "container" {
///   depends_on = [gcp_projects_service.gkehub]
///   project    = gcp_organizations_project.project.project_id
///   service    = "container.googleapis.com"
/// }
/// resource "gcp_projects_service" "compute" {
///   depends_on = [gcp_projects_service.container]
///   project    = gcp_organizations_project.project.project_id
///   service    = "compute.googleapis.com"
/// }
/// // wait for API enablement
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on      = [gcp_projects_service.compute]
///   create_duration = "120s"
/// }
/// resource "gcp_gkehub_fleet" "default" {
///   depends_on   = [time_sleep.wait_120_seconds]
///   display_name = "rs-fleet"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_container_cluster" "primary" {
///   depends_on          = [gcp_gkehub_fleet.default]
///   project             = gcp_organizations_project.project.project_id
///   name                = "rs-cluster"
///   location            = "us-central1-a"
///   initial_node_count  = 1
///   min_master_version  = data.gcp_container_getengineversions.versions.release_channel_default_version["REGULAR"]
///   node_version        = data.gcp_container_getengineversions.versions.release_channel_default_version["REGULAR"]
///   deletion_protection = false
///   release_channel = {
///     channel = "REGULAR"
///   }
///   resource_labels = {
///     "rs_test_cluster" = "tf-test-_89239"
///   }
///   fleet = {
///     project = gcp_organizations_project.project.number
///   }
/// }
/// resource "gcp_gkehub_rolloutsequence" "rollout_sequence" {
///   depends_on                = [gcp_container_cluster.primary]
///   project                   = gcp_organizations_project.project.project_id
///   rollout_sequence_id       = "rs-user-triggered"
///   display_name              = "User Triggered Rollout Sequence"
///   min_control_plane_version = data.gcp_container_getengineversions.versions.release_channel_latest_version["REGULAR"]
///   ignored_clusters_selector = {
///     label_selector = "!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')"
///   }
///   stages {
///     fleet_projects = ["projects/${gcp_organizations_project.project.project_id}"]
///     soak_duration  = "30s"
///   }
///   auto_upgrade_config = {
///     rollout_creation_scope = {
///       upgrade_types = []
///     }
///   }
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.gkehub.Fleet;
/// import com.pulumi.gcp.gkehub.FleetArgs;
/// import com.pulumi.gcp.container.ContainerFunctions;
/// import com.pulumi.gcp.container.inputs.GetEngineVersionsArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterReleaseChannelArgs;
/// import com.pulumi.gcp.container.inputs.ClusterFleetArgs;
/// import com.pulumi.gcp.gkehub.RolloutSequence;
/// import com.pulumi.gcp.gkehub.RolloutSequenceArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceIgnoredClustersSelectorArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceStageArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigArgs;
/// import com.pulumi.gcp.gkehub.inputs.RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("rs-project")
///             .name("rs-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable APIs in a deterministic order to avoid inconsistent VCR recordings
///         var gkehub = new Service("gkehub", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("gkehub.googleapis.com")
///             .build());
///
///         var container = new Service("container", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("container.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gkehub)
///                 .build());
///
///         var compute = new Service("compute", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("compute.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(container)
///                 .build());
///
///         // wait for API enablement
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(compute)
///                 .build());
///
///         var default_ = new Fleet("default", FleetArgs.builder()
///             .displayName("rs-fleet")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
///                 .build());
///
///         final var versions = ContainerFunctions.getEngineVersions(GetEngineVersionsArgs.builder()
///             .location("us-central1-a")
///             .project(project.projectId())
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .project(project.projectId())
///             .name("rs-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .minMasterVersion(versions.applyValue(_versions -> _versions.releaseChannelDefaultVersion().get("REGULAR")))
///             .nodeVersion(versions.applyValue(_versions -> _versions.releaseChannelDefaultVersion().get("REGULAR")))
///             .deletionProtection(false)
///             .releaseChannel(ClusterReleaseChannelArgs.builder()
///                 .channel("REGULAR")
///                 .build())
///             .resourceLabels(Map.of("rs_test_cluster", "tf-test-_89239"))
///             .fleet(ClusterFleetArgs.builder()
///                 .project(project.number())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///         var rolloutSequence = new RolloutSequence("rolloutSequence", RolloutSequenceArgs.builder()
///             .project(project.projectId())
///             .rolloutSequenceId("rs-user-triggered")
///             .displayName("User Triggered Rollout Sequence")
///             .minControlPlaneVersion(versions.applyValue(_versions -> _versions.releaseChannelLatestVersion().get("REGULAR")))
///             .ignoredClustersSelector(RolloutSequenceIgnoredClustersSelectorArgs.builder()
///                 .labelSelector("!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == 'tf-test-_41898')")
///                 .build())
///             .stages(RolloutSequenceStageArgs.builder()
///                 .fleetProjects(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///                 .soakDuration("30s")
///                 .build())
///             .autoUpgradeConfig(RolloutSequenceAutoUpgradeConfigArgs.builder()
///                 .rolloutCreationScope(RolloutSequenceAutoUpgradeConfigRolloutCreationScopeArgs.builder()
///                     .upgradeTypes()
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(primary)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: rs-project
///       name: rs-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable APIs in a deterministic order to avoid inconsistent VCR recordings
///   gkehub:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: gkehub.googleapis.com
///   container:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: container.googleapis.com
///     options:
///       dependsOn:
///         - ${gkehub}
///   compute:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: compute.googleapis.com
///     options:
///       dependsOn:
///         - ${container}
///   # wait for API enablement
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${compute}
///   default:
///     type: gcp:gkehub:Fleet
///     properties:
///       displayName: rs-fleet
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       project: ${project.projectId}
///       name: rs-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       minMasterVersion: ${versions.releaseChannelDefaultVersion.REGULAR}
///       nodeVersion: ${versions.releaseChannelDefaultVersion.REGULAR}
///       deletionProtection: false
///       releaseChannel:
///         channel: REGULAR
///       resourceLabels:
///         rs_test_cluster: tf-test-_89239
///       fleet:
///         project: ${project.number}
///     options:
///       dependsOn:
///         - ${default}
///   rolloutSequence:
///     type: gcp:gkehub:RolloutSequence
///     name: rollout_sequence
///     properties:
///       project: ${project.projectId}
///       rolloutSequenceId: rs-user-triggered
///       displayName: User Triggered Rollout Sequence
///       minControlPlaneVersion: ${versions.releaseChannelLatestVersion.REGULAR}
///       ignoredClustersSelector:
///         labelSelector: '!(has(resource.labels.rs_test_cluster) && resource.labels.rs_test_cluster == ''tf-test-_41898'')'
///       stages:
///         - fleetProjects:
///             - projects/${project.projectId}
///           soakDuration: 30s
///       autoUpgradeConfig:
///         rolloutCreationScope:
///           upgradeTypes: []
///     options:
///       dependsOn:
///         - ${primary}
/// variables:
///   versions:
///     fn::invoke:
///       function: gcp:container:getEngineVersions
///       arguments:
///         location: us-central1-a
///         project: ${project.projectId}
/// ```
///
///
/// ## Import
///
/// RolloutSequence can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/rolloutSequences/{{rollout_sequence_id}}`
/// * `{{project}}/{{rollout_sequence_id}}`
/// * `{{rollout_sequence_id}}`
///
///
/// When using the `pulumi import` command, RolloutSequence can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default projects/{{project}}/locations/global/rolloutSequences/{{rollout_sequence_id}}
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default {{project}}/{{rollout_sequence_id}}
/// $ pulumi import gcp:gkehub/rolloutSequence:RolloutSequence default {{rollout_sequence_id}}
/// ```
class RolloutSequence extends pulumi.CustomResource {
  /// Configuration for automatic upgrades.
  /// If not specified, the system applies default behavior.
  /// Structure is documented below.
  late final pulumi.Output<RolloutSequenceAutoUpgradeConfig?> autoUpgradeConfig;
  /// The timestamp at which the Rollout Sequence was created.
  late final pulumi.Output<String> createTime;
  /// The timestamp at the Rollout Sequence was deleted.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Human readable display name of the Rollout Sequence.
  late final pulumi.Output<String?> displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// etag of the Rollout Sequence.
  late final pulumi.Output<String> etag;
  /// Selector for clusters to exclude from the Rollout Sequence.
  /// Structure is documented below.
  late final pulumi.Output<RolloutSequenceIgnoredClustersSelector?> ignoredClustersSelector;
  /// Labels for this Rollout Sequence.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Minimum control plane version that the clusters in the sequence should be upgraded to.
  /// Setting this field will cause the creation of a rollout to the specified version.
  /// Any rollout of the same type already running on the first stage of the sequence will be cancelled to allow for the creation of the new rollout.
  /// Should be a valid [semantic version](https://semver.org/).
  /// Version aliases are supported, as described in the [cluster version docs](https://docs.cloud.google.com/kubernetes-engine/versioning#specifying_cluster_version).
  /// Note that the `latest` and `-` aliases are not supported for this field.
  /// Supported formats: `1.X`, `1.X.Y`, `1.X.Y-gke.N`.
  late final pulumi.Output<String?> minControlPlaneVersion;
  /// Minimum node version that the clusters in the sequence should be upgraded to.
  /// Setting this field will cause the creation of a rollout to the specified version.
  /// Any rollout of the same type already running on the first stage of the sequence will be cancelled to allow for the creation of the new rollout.
  /// Should be a valid [semantic version](https://semver.org/).
  /// Version aliases are supported, as described in the [cluster version docs](https://docs.cloud.google.com/kubernetes-engine/versioning#specifying_cluster_version).
  /// Note that the `latest` and `-` aliases are not supported for this field.
  /// Supported formats: `1.X`, `1.X.Y`, `1.X.Y-gke.N`.
  late final pulumi.Output<String?> minNodeVersion;
  /// The full resource name of the RolloutSequence.
  late final pulumi.Output<String> name;
  /// The operational state of the rollout sequence.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> operationalStates;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The user-provided identifier of the RolloutSequence.
  late final pulumi.Output<String> rolloutSequenceId;
  /// Ordered list of stages that constitute this Rollout Sequence.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> stages;
  /// The current target control plane version.
  late final pulumi.Output<String> targetControlPlaneVersion;
  /// The current target node version.
  late final pulumi.Output<String> targetNodeVersion;
  /// Google-generated UUID for this resource.
  late final pulumi.Output<String> uid;
  /// The timestamp at which the Rollout Sequence was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RolloutSequence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RolloutSequence]. {@macro pulumi_gkehub_rollout_sequence_rollout_sequence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RolloutSequence(
    String name, {
    RolloutSequenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/rolloutSequence:RolloutSequence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoUpgradeConfig = registerOutput<RolloutSequenceAutoUpgradeConfig?>('autoUpgradeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RolloutSequenceAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    ignoredClustersSelector = registerOutput<RolloutSequenceIgnoredClustersSelector?>('ignoredClustersSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RolloutSequenceIgnoredClustersSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    minControlPlaneVersion = registerOutput<String?>('minControlPlaneVersion');
    minNodeVersion = registerOutput<String?>('minNodeVersion');
    this.name = registerOutput<String>('name');
    operationalStates = registerOutput<List<Map<String, dynamic>>>('operationalStates');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rolloutSequenceId = registerOutput<String>('rolloutSequenceId');
    stages = registerOutput<List<Map<String, dynamic>>>('stages');
    targetControlPlaneVersion = registerOutput<String>('targetControlPlaneVersion');
    targetNodeVersion = registerOutput<String>('targetNodeVersion');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [RolloutSequence] resource's state with the given [name] and [id].
  static RolloutSequence get(
    String name,
    pulumi.Input<String> id, {
    RolloutSequenceState? state,
  }) {
    return RolloutSequence._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RolloutSequence._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkehub/rolloutSequence:RolloutSequence',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoUpgradeConfig = registerOutput<RolloutSequenceAutoUpgradeConfig?>('autoUpgradeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RolloutSequenceAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    etag = registerOutput<String>('etag');
    ignoredClustersSelector = registerOutput<RolloutSequenceIgnoredClustersSelector?>('ignoredClustersSelector', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RolloutSequenceIgnoredClustersSelector.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labels = registerOutput<Map<String, String>?>('labels');
    minControlPlaneVersion = registerOutput<String?>('minControlPlaneVersion');
    minNodeVersion = registerOutput<String?>('minNodeVersion');
    this.name = registerOutput<String>('name');
    operationalStates = registerOutput<List<Map<String, dynamic>>>('operationalStates');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rolloutSequenceId = registerOutput<String>('rolloutSequenceId');
    stages = registerOutput<List<Map<String, dynamic>>>('stages');
    targetControlPlaneVersion = registerOutput<String>('targetControlPlaneVersion');
    targetNodeVersion = registerOutput<String>('targetNodeVersion');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}

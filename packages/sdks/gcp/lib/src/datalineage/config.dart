import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_args.dart';
import 'config_ingestion.dart';
import 'config_state.dart';

/// Configuration for Data Lineage.
///
/// Defines configuration options for Lineage customers to control behavior of
/// lineage systems.
///
///
/// To get more information about Config, see:
///
/// * [API documentation](https://docs.cloud.google.com/dataplex/docs/reference/data-lineage/rest/v1/folders.locations.config)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/dataplex/docs/about-data-lineage#control-lineage-ingestion)
///
/// ## Example Usage
///
/// ### Data Lineage Config Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "tf-test_33395",
///     name: "tf-test_76044",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const waitForProject = new time.Sleep("wait_for_project", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const datalineageApi = new gcp.projects.Service("datalineage_api", {
///     project: project.projectId,
///     service: "datalineage.googleapis.com",
/// }, {
///     dependsOn: [waitForProject],
/// });
/// const _default = new gcp.datalineage.Config("default", {
///     parent: pulumi.interpolate`projects/${project.projectId}`,
///     location: "global",
///     ingestion: {
///         rules: [{
///             integrationSelector: {
///                 integration: "DATAPROC",
///             },
///             lineageEnablement: {
///                 enabled: true,
///             },
///         }],
///     },
/// }, {
///     dependsOn: [datalineageApi],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="tf-test_33395",
///     name="tf-test_76044",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// wait_for_project = time.Sleep("wait_for_project", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// datalineage_api = gcp.projects.Service("datalineage_api",
///     project=project.project_id,
///     service="datalineage.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_project]))
/// default = gcp.datalineage.Config("default",
///     parent=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     location="global",
///     ingestion={
///         "rules": [{
///             "integration_selector": {
///                 "integration": "DATAPROC",
///             },
///             "lineage_enablement": {
///                 "enabled": True,
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[datalineage_api]))
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
///         ProjectId = "tf-test_33395",
///         Name = "tf-test_76044",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var waitForProject = new Time.Sleep("wait_for_project", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var datalineageApi = new Gcp.Projects.Service("datalineage_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "datalineage.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForProject,
///         },
///     });
///
///     var @default = new Gcp.DataLineage.Config("default", new()
///     {
///         Parent = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         Location = "global",
///         Ingestion = new Gcp.DataLineage.Inputs.ConfigIngestionArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataLineage.Inputs.ConfigIngestionRuleArgs
///                 {
///                     IntegrationSelector = new Gcp.DataLineage.Inputs.ConfigIngestionRuleIntegrationSelectorArgs
///                     {
///                         Integration = "DATAPROC",
///                     },
///                     LineageEnablement = new Gcp.DataLineage.Inputs.ConfigIngestionRuleLineageEnablementArgs
///                     {
///                         Enabled = true,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             datalineageApi,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_33395"),
/// 			Name:           pulumi.String("tf-test_76044"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForProject, err := time.NewSleep(ctx, "wait_for_project", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datalineageApi, err := projects.NewService(ctx, "datalineage_api", &projects.ServiceArgs{
/// 			Project: project.ProjectId,
/// 			Service: pulumi.String("datalineage.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datalineage.NewConfig(ctx, "default", &datalineage.ConfigArgs{
/// 			Parent: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Location: pulumi.String("global"),
/// 			Ingestion: &datalineage.ConfigIngestionArgs{
/// 				Rules: datalineage.ConfigIngestionRuleArray{
/// 					&datalineage.ConfigIngestionRuleArgs{
/// 						IntegrationSelector: &datalineage.ConfigIngestionRuleIntegrationSelectorArgs{
/// 							Integration: pulumi.String("DATAPROC"),
/// 						},
/// 						LineageEnablement: &datalineage.ConfigIngestionRuleLineageEnablementArgs{
/// 							Enabled: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			datalineageApi,
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
///   project_id      = "tf-test_33395"
///   name            = "tf-test_76044"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_for_project" {
///   depends_on      = [gcp_organizations_project.project]
///   create_duration = "60s"
/// }
/// resource "gcp_projects_service" "datalineage_api" {
///   depends_on = [time_sleep.wait_for_project]
///   project    = gcp_organizations_project.project.project_id
///   service    = "datalineage.googleapis.com"
/// }
/// resource "gcp_datalineage_config" "default" {
///   depends_on = [gcp_projects_service.datalineage_api]
///   parent     ="projects/${gcp_organizations_project.project.project_id}"
///   location   = "global"
///   ingestion = {
///     rules = [{
///       "integrationSelector" = {
///         "integration" = "DATAPROC"
///       }
///       "lineageEnablement" = {
///         "enabled" = true
///       }
///     }]
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.datalineage.Config;
/// import com.pulumi.gcp.datalineage.ConfigArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleIntegrationSelectorArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleLineageEnablementArgs;
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
///             .projectId("tf-test_33395")
///             .name("tf-test_76044")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var waitForProject = new Sleep("waitForProject", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var datalineageApi = new Service("datalineageApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("datalineage.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForProject)
///                 .build());
///
///         var default_ = new Config("default", ConfigArgs.builder()
///             .parent(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .location("global")
///             .ingestion(ConfigIngestionArgs.builder()
///                 .rules(ConfigIngestionRuleArgs.builder()
///                     .integrationSelector(ConfigIngestionRuleIntegrationSelectorArgs.builder()
///                         .integration("DATAPROC")
///                         .build())
///                     .lineageEnablement(ConfigIngestionRuleLineageEnablementArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(datalineageApi)
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
///       projectId: tf-test_33395
///       name: tf-test_76044
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   waitForProject:
///     type: time:Sleep
///     name: wait_for_project
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   datalineageApi:
///     type: gcp:projects:Service
///     name: datalineage_api
///     properties:
///       project: ${project.projectId}
///       service: datalineage.googleapis.com
///     options:
///       dependsOn:
///         - ${waitForProject}
///   default:
///     type: gcp:datalineage:Config
///     properties:
///       parent: projects/${project.projectId}
///       location: global
///       ingestion:
///         rules:
///           - integrationSelector:
///               integration: DATAPROC
///             lineageEnablement:
///               enabled: true
///     options:
///       dependsOn:
///         - ${datalineageApi}
/// ```
///
/// ### Data Lineage Config Folder
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const integration = new gcp.organizations.Folder("integration", {
///     displayName: "config-f",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const datalineageAdmin = new gcp.folder.IAMMember("datalineage_admin", {
///     folder: integration.folderId,
///     role: "roles/datalineage.admin",
///     member: "serviceAccount:my@service-account.com",
/// });
/// const waitForFolderIam = new time.Sleep("wait_for_folder_iam", {createDuration: "60s"}, {
///     dependsOn: [datalineageAdmin],
/// });
/// const _default = new gcp.datalineage.Config("default", {
///     parent: integration.name,
///     location: "global",
///     ingestion: {
///         rules: [{
///             integrationSelector: {
///                 integration: "DATAPROC",
///             },
///             lineageEnablement: {
///                 enabled: true,
///             },
///         }],
///     },
/// }, {
///     dependsOn: [waitForFolderIam],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// integration = gcp.organizations.Folder("integration",
///     display_name="config-f",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// datalineage_admin = gcp.folder.IAMMember("datalineage_admin",
///     folder=integration.folder_id,
///     role="roles/datalineage.admin",
///     member="serviceAccount:my@service-account.com")
/// wait_for_folder_iam = time.Sleep("wait_for_folder_iam", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[datalineage_admin]))
/// default = gcp.datalineage.Config("default",
///     parent=integration.name,
///     location="global",
///     ingestion={
///         "rules": [{
///             "integration_selector": {
///                 "integration": "DATAPROC",
///             },
///             "lineage_enablement": {
///                 "enabled": True,
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_folder_iam]))
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
///     var integration = new Gcp.Organizations.Folder("integration", new()
///     {
///         DisplayName = "config-f",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var datalineageAdmin = new Gcp.Folder.IAMMember("datalineage_admin", new()
///     {
///         Folder = integration.FolderId,
///         Role = "roles/datalineage.admin",
///         Member = "serviceAccount:my@service-account.com",
///     });
///
///     var waitForFolderIam = new Time.Sleep("wait_for_folder_iam", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             datalineageAdmin,
///         },
///     });
///
///     var @default = new Gcp.DataLineage.Config("default", new()
///     {
///         Parent = integration.Name,
///         Location = "global",
///         Ingestion = new Gcp.DataLineage.Inputs.ConfigIngestionArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataLineage.Inputs.ConfigIngestionRuleArgs
///                 {
///                     IntegrationSelector = new Gcp.DataLineage.Inputs.ConfigIngestionRuleIntegrationSelectorArgs
///                     {
///                         Integration = "DATAPROC",
///                     },
///                     LineageEnablement = new Gcp.DataLineage.Inputs.ConfigIngestionRuleLineageEnablementArgs
///                     {
///                         Enabled = true,
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForFolderIam,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/folder"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		integration, err := organizations.NewFolder(ctx, "integration", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("config-f"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		datalineageAdmin, err := folder.NewIAMMember(ctx, "datalineage_admin", &folder.IAMMemberArgs{
/// 			Folder: integration.FolderId,
/// 			Role:   pulumi.String("roles/datalineage.admin"),
/// 			Member: pulumi.String("serviceAccount:my@service-account.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForFolderIam, err := time.NewSleep(ctx, "wait_for_folder_iam", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			datalineageAdmin,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datalineage.NewConfig(ctx, "default", &datalineage.ConfigArgs{
/// 			Parent:   integration.Name,
/// 			Location: pulumi.String("global"),
/// 			Ingestion: &datalineage.ConfigIngestionArgs{
/// 				Rules: datalineage.ConfigIngestionRuleArray{
/// 					&datalineage.ConfigIngestionRuleArgs{
/// 						IntegrationSelector: &datalineage.ConfigIngestionRuleIntegrationSelectorArgs{
/// 							Integration: pulumi.String("DATAPROC"),
/// 						},
/// 						LineageEnablement: &datalineage.ConfigIngestionRuleLineageEnablementArgs{
/// 							Enabled: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForFolderIam,
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
/// resource "gcp_datalineage_config" "default" {
///   depends_on = [time_sleep.wait_for_folder_iam]
///   parent     = gcp_organizations_folder.integration.name
///   location   = "global"
///   ingestion = {
///     rules = [{
///       "integrationSelector" = {
///         "integration" = "DATAPROC"
///       }
///       "lineageEnablement" = {
///         "enabled" = true
///       }
///     }]
///   }
/// }
/// resource "time_sleep" "wait_for_folder_iam" {
///   depends_on      = [gcp_folder_iammember.datalineage_admin]
///   create_duration = "60s"
/// }
/// resource "gcp_organizations_folder" "integration" {
///   display_name        = "config-f"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_folder_iammember" "datalineage_admin" {
///   folder = gcp_organizations_folder.integration.folder_id
///   role   = "roles/datalineage.admin"
///   member = "serviceAccount:my@service-account.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumi.gcp.folder.IAMMember;
/// import com.pulumi.gcp.folder.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.datalineage.Config;
/// import com.pulumi.gcp.datalineage.ConfigArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleIntegrationSelectorArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleLineageEnablementArgs;
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
///         var integration = new Folder("integration", FolderArgs.builder()
///             .displayName("config-f")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var datalineageAdmin = new IAMMember("datalineageAdmin", IAMMemberArgs.builder()
///             .folder(integration.folderId())
///             .role("roles/datalineage.admin")
///             .member("serviceAccount:my@service-account.com")
///             .build());
///
///         var waitForFolderIam = new Sleep("waitForFolderIam", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(datalineageAdmin)
///                 .build());
///
///         var default_ = new Config("default", ConfigArgs.builder()
///             .parent(integration.name())
///             .location("global")
///             .ingestion(ConfigIngestionArgs.builder()
///                 .rules(ConfigIngestionRuleArgs.builder()
///                     .integrationSelector(ConfigIngestionRuleIntegrationSelectorArgs.builder()
///                         .integration("DATAPROC")
///                         .build())
///                     .lineageEnablement(ConfigIngestionRuleLineageEnablementArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForFolderIam)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datalineage:Config
///     properties:
///       parent: ${integration.name}
///       location: global
///       ingestion:
///         rules:
///           - integrationSelector:
///               integration: DATAPROC
///             lineageEnablement:
///               enabled: true
///     options:
///       dependsOn:
///         - ${waitForFolderIam}
///   waitForFolderIam:
///     type: time:Sleep
///     name: wait_for_folder_iam
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${datalineageAdmin}
///   integration:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: config-f
///       parent: organizations/123456789
///       deletionProtection: false
///   datalineageAdmin:
///     type: gcp:folder:IAMMember
///     name: datalineage_admin
///     properties:
///       folder: ${integration.folderId}
///       role: roles/datalineage.admin
///       member: serviceAccount:my@service-account.com
/// ```
///
/// ### Data Lineage Config Organization
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.datalineage.Config("default", {
///     parent: "organizations/123456789",
///     location: "global",
///     ingestion: {
///         rules: [{
///             integrationSelector: {
///                 integration: "LOOKER_CORE",
///             },
///             lineageEnablement: {
///                 enabled: true,
///             },
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.datalineage.Config("default",
///     parent="organizations/123456789",
///     location="global",
///     ingestion={
///         "rules": [{
///             "integration_selector": {
///                 "integration": "LOOKER_CORE",
///             },
///             "lineage_enablement": {
///                 "enabled": True,
///             },
///         }],
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
///     var @default = new Gcp.DataLineage.Config("default", new()
///     {
///         Parent = "organizations/123456789",
///         Location = "global",
///         Ingestion = new Gcp.DataLineage.Inputs.ConfigIngestionArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.DataLineage.Inputs.ConfigIngestionRuleArgs
///                 {
///                     IntegrationSelector = new Gcp.DataLineage.Inputs.ConfigIngestionRuleIntegrationSelectorArgs
///                     {
///                         Integration = "LOOKER_CORE",
///                     },
///                     LineageEnablement = new Gcp.DataLineage.Inputs.ConfigIngestionRuleLineageEnablementArgs
///                     {
///                         Enabled = true,
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/datalineage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalineage.NewConfig(ctx, "default", &datalineage.ConfigArgs{
/// 			Parent:   pulumi.String("organizations/123456789"),
/// 			Location: pulumi.String("global"),
/// 			Ingestion: &datalineage.ConfigIngestionArgs{
/// 				Rules: datalineage.ConfigIngestionRuleArray{
/// 					&datalineage.ConfigIngestionRuleArgs{
/// 						IntegrationSelector: &datalineage.ConfigIngestionRuleIntegrationSelectorArgs{
/// 							Integration: pulumi.String("LOOKER_CORE"),
/// 						},
/// 						LineageEnablement: &datalineage.ConfigIngestionRuleLineageEnablementArgs{
/// 							Enabled: pulumi.Bool(true),
/// 						},
/// 					},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_datalineage_config" "default" {
///   parent   = "organizations/123456789"
///   location = "global"
///   ingestion = {
///     rules = [{
///       "integrationSelector" = {
///         "integration" = "LOOKER_CORE"
///       }
///       "lineageEnablement" = {
///         "enabled" = true
///       }
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.datalineage.Config;
/// import com.pulumi.gcp.datalineage.ConfigArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleIntegrationSelectorArgs;
/// import com.pulumi.gcp.datalineage.inputs.ConfigIngestionRuleLineageEnablementArgs;
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
///         var default_ = new Config("default", ConfigArgs.builder()
///             .parent("organizations/123456789")
///             .location("global")
///             .ingestion(ConfigIngestionArgs.builder()
///                 .rules(ConfigIngestionRuleArgs.builder()
///                     .integrationSelector(ConfigIngestionRuleIntegrationSelectorArgs.builder()
///                         .integration("LOOKER_CORE")
///                         .build())
///                     .lineageEnablement(ConfigIngestionRuleLineageEnablementArgs.builder()
///                         .enabled(true)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:datalineage:Config
///     properties:
///       parent: organizations/123456789
///       location: global
///       ingestion:
///         rules:
///           - integrationSelector:
///               integration: LOOKER_CORE
///             lineageEnablement:
///               enabled: true
/// ```
///
///
/// ## Import
///
/// Config can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/config`
///
///
/// When using the `pulumi import` command, Config can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:datalineage/config:Config default {{parent}}/locations/{{location}}/config
/// ```
class Config extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Used for optimistic concurrency control when patching config.
  late final pulumi.Output<String> etag;
  /// Defines how Lineage should be ingested for this resource.
  /// Structure is documented below.
  late final pulumi.Output<ConfigIngestion> ingestion;
  /// The region of the data lineage configuration for integration.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the config.
  /// Format: organizations/{organization_id}/locations/{location}/config,
  /// folders/{folder_id}/locations/{location}/config,
  /// projects/{project_id}/locations/{location}/config,
  /// or projects/{project_number}/locations/{location}/config.
  late final pulumi.Output<String> name;
  /// Parent scope for the config.
  /// Format: projects/{project-id|project-number} or folders/{folder-number} or organizations/{organization-number}.
  late final pulumi.Output<String> parent;

  /// Creates a new [Config].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Config]. {@macro pulumi_datalineage_config_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Config(
    String name, {
    ConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datalineage/config:Config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    ingestion = registerOutput<ConfigIngestion>('ingestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
  }

  /// Gets an existing [Config] resource's state with the given [name] and [id].
  static Config get(
    String name,
    pulumi.Input<String> id, {
    ConfigState? state,
  }) {
    return Config._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Config._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:datalineage/config:Config',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    ingestion = registerOutput<ConfigIngestion>('ingestion', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConfigIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
  }
}

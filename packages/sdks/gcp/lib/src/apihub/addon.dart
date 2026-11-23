import 'package:pulumi/pulumi.dart' as pulumi;
import 'addon_args.dart';
import 'addon_config.dart';
import 'addon_state.dart';

/// Addons are used to configure value-added services inside the API Hub.
///
///
/// To get more information about Addon, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apihub/rest/v1/projects.locations.addons)
/// * How-to Guides
/// * [Manage add-ons](https://cloud.google.com/apigee/docs/apihub/manage-add-ons)
/// * [Official Documentation](https://cloud.google.com/apigee/docs/apihub/what-is-api-hub)
///
///
/// ## Example Usage
///
/// ### Apihub Addon Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "apihub-proj",
///     name: "apihub-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const apihubService = new gcp.projects.Service("apihub_service", {
///     project: project.projectId,
///     service: "apihub.googleapis.com",
///     disableOnDestroy: false,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// // An API hub instance requires a host project registration in the same location.
/// const hostProjectRegistration = new gcp.apihub.HostProjectRegistration("host_project_registration", {
///     project: project.projectId,
///     location: "us-central1",
///     hostProjectRegistrationId: project.projectId,
///     gcpProject: pulumi.interpolate`projects/${project.projectId}`,
/// }, {
///     dependsOn: [apihubService],
/// });
/// // Provisioning an API hub instance creates the system-defined addons and plugins.
/// const apihubInstance = new gcp.apihub.ApiHubInstance("apihub_instance", {
///     project: project.projectId,
///     location: "us-central1",
///     config: {
///         disableSearch: true,
///     },
/// }, {
///     dependsOn: [hostProjectRegistration],
/// });
/// const apihubAddonBasic = new gcp.apihub.Addon("apihub_addon_basic", {
///     project: project.projectId,
///     location: "us-central1",
///     addonId: "system-specboost",
///     config: {
///         allDataAddonConfig: {
///             enabled: true,
///         },
///     },
/// }, {
///     dependsOn: [apihubInstance],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="apihub-proj",
///     name="apihub-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// apihub_service = gcp.projects.Service("apihub_service",
///     project=project.project_id,
///     service="apihub.googleapis.com",
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// # An API hub instance requires a host project registration in the same location.
/// host_project_registration = gcp.apihub.HostProjectRegistration("host_project_registration",
///     project=project.project_id,
///     location="us-central1",
///     host_project_registration_id=project.project_id,
///     gcp_project=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[apihub_service]))
/// # Provisioning an API hub instance creates the system-defined addons and plugins.
/// apihub_instance = gcp.apihub.ApiHubInstance("apihub_instance",
///     project=project.project_id,
///     location="us-central1",
///     config={
///         "disable_search": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[host_project_registration]))
/// apihub_addon_basic = gcp.apihub.Addon("apihub_addon_basic",
///     project=project.project_id,
///     location="us-central1",
///     addon_id="system-specboost",
///     config={
///         "all_data_addon_config": {
///             "enabled": True,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[apihub_instance]))
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
///         ProjectId = "apihub-proj",
///         Name = "apihub-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
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
///     var apihubService = new Gcp.Projects.Service("apihub_service", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apihub.googleapis.com",
///         DisableOnDestroy = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     // An API hub instance requires a host project registration in the same location.
///     var hostProjectRegistration = new Gcp.ApiHub.HostProjectRegistration("host_project_registration", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         HostProjectRegistrationId = project.ProjectId,
///         GcpProject = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apihubService,
///         },
///     });
///
///     // Provisioning an API hub instance creates the system-defined addons and plugins.
///     var apihubInstance = new Gcp.ApiHub.ApiHubInstance("apihub_instance", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         Config = new Gcp.ApiHub.Inputs.ApiHubInstanceConfigArgs
///         {
///             DisableSearch = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             hostProjectRegistration,
///         },
///     });
///
///     var apihubAddonBasic = new Gcp.ApiHub.Addon("apihub_addon_basic", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         AddonId = "system-specboost",
///         Config = new Gcp.ApiHub.Inputs.AddonConfigArgs
///         {
///             AllDataAddonConfig = new Gcp.ApiHub.Inputs.AddonConfigAllDataAddonConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apihubInstance,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/apihub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("apihub-proj"),
/// 			Name:           pulumi.String("apihub-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apihubService, err := projects.NewService(ctx, "apihub_service", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("apihub.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// An API hub instance requires a host project registration in the same location.
/// 		hostProjectRegistration, err := apihub.NewHostProjectRegistration(ctx, "host_project_registration", &apihub.HostProjectRegistrationArgs{
/// 			Project:                   project.ProjectId,
/// 			Location:                  pulumi.String("us-central1"),
/// 			HostProjectRegistrationId: project.ProjectId,
/// 			GcpProject: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apihubService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provisioning an API hub instance creates the system-defined addons and plugins.
/// 		apihubInstance, err := apihub.NewApiHubInstance(ctx, "apihub_instance", &apihub.ApiHubInstanceArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &apihub.ApiHubInstanceConfigArgs{
/// 				DisableSearch: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			hostProjectRegistration,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apihub.NewAddon(ctx, "apihub_addon_basic", &apihub.AddonArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("us-central1"),
/// 			AddonId:  pulumi.String("system-specboost"),
/// 			Config: &apihub.AddonConfigArgs{
/// 				AllDataAddonConfig: &apihub.AddonConfigAllDataAddonConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apihubInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
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
///   lifecycle {
///     create_before_destroy = true
///   }
///   project_id      = "apihub-proj"
///   name            = "apihub-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on = [gcp_organizations_project.project]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "60s"
/// }
/// resource "gcp_projects_service" "apihub_service" {
///   depends_on = [time_sleep.wait_60_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project            = gcp_organizations_project.project.project_id
///   service            = "apihub.googleapis.com"
///   disable_on_destroy = false
/// }
/// # An API hub instance requires a host project registration in the same location.
/// resource "gcp_apihub_host_project_registration" "host_project_registration" {
///   depends_on = [gcp_projects_service.apihub_service]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project                      = gcp_organizations_project.project.project_id
///   location                     = "us-central1"
///   host_project_registration_id = gcp_organizations_project.project.project_id
///   gcp_project                  ="projects/${gcp_organizations_project.project.project_id}"
/// }
/// # Provisioning an API hub instance creates the system-defined addons and plugins.
/// resource "gcp_apihub_api_hub_instance" "apihub_instance" {
///   depends_on = [gcp_apihub_host_project_registration.host_project_registration]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = gcp_organizations_project.project.project_id
///   location = "us-central1"
///   config = {
///     disable_search = true
///   }
/// }
/// resource "gcp_apihub_addon" "apihub_addon_basic" {
///   depends_on = [gcp_apihub_api_hub_instance.apihub_instance]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = gcp_organizations_project.project.project_id
///   location = "us-central1"
///   addon_id = "system-specboost"
///   config = {
///     all_data_addon_config = {
///       enabled = true
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.apihub.HostProjectRegistration;
/// import com.pulumi.gcp.apihub.HostProjectRegistrationArgs;
/// import com.pulumi.gcp.apihub.ApiHubInstance;
/// import com.pulumi.gcp.apihub.ApiHubInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.ApiHubInstanceConfigArgs;
/// import com.pulumi.gcp.apihub.Addon;
/// import com.pulumi.gcp.apihub.AddonArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigAllDataAddonConfigArgs;
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
///             .projectId("apihub-proj")
///             .name("apihub-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var apihubService = new Service("apihubService", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apihub.googleapis.com")
///             .disableOnDestroy(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         // An API hub instance requires a host project registration in the same location.
///         var hostProjectRegistration = new HostProjectRegistration("hostProjectRegistration", HostProjectRegistrationArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .hostProjectRegistrationId(project.projectId())
///             .gcpProject(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apihubService)
///                 .build());
///
///         // Provisioning an API hub instance creates the system-defined addons and plugins.
///         var apihubInstance = new ApiHubInstance("apihubInstance", ApiHubInstanceArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .config(ApiHubInstanceConfigArgs.builder()
///                 .disableSearch(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(hostProjectRegistration)
///                 .build());
///
///         var apihubAddonBasic = new Addon("apihubAddonBasic", AddonArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .addonId("system-specboost")
///             .config(AddonConfigArgs.builder()
///                 .allDataAddonConfig(AddonConfigAllDataAddonConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apihubInstance)
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
///       projectId: apihub-proj
///       name: apihub-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   apihubService:
///     type: gcp:projects:Service
///     name: apihub_service
///     properties:
///       project: ${project.projectId}
///       service: apihub.googleapis.com
///       disableOnDestroy: false
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   # An API hub instance requires a host project registration in the same location.
///   hostProjectRegistration:
///     type: gcp:apihub:HostProjectRegistration
///     name: host_project_registration
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       hostProjectRegistrationId: ${project.projectId}
///       gcpProject: projects/${project.projectId}
///     options:
///       dependsOn:
///         - ${apihubService}
///   # Provisioning an API hub instance creates the system-defined addons and plugins.
///   apihubInstance:
///     type: gcp:apihub:ApiHubInstance
///     name: apihub_instance
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       config:
///         disableSearch: true
///     options:
///       dependsOn:
///         - ${hostProjectRegistration}
///   apihubAddonBasic:
///     type: gcp:apihub:Addon
///     name: apihub_addon_basic
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       addonId: system-specboost
///       config:
///         allDataAddonConfig:
///           enabled: true
///     options:
///       dependsOn:
///         - ${apihubInstance}
/// ```
///
///
/// ### Apihub Addon Gateway Plugin
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "apihub-proj",
///     name: "apihub-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [project],
/// });
/// const apihubService = new gcp.projects.Service("apihub_service", {
///     project: project.projectId,
///     service: "apihub.googleapis.com",
///     disableOnDestroy: false,
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// // An API hub instance requires a host project registration in the same location.
/// const hostProjectRegistration = new gcp.apihub.HostProjectRegistration("host_project_registration", {
///     project: project.projectId,
///     location: "us-central1",
///     hostProjectRegistrationId: project.projectId,
///     gcpProject: pulumi.interpolate`projects/${project.projectId}`,
/// }, {
///     dependsOn: [apihubService],
/// });
/// // Provisioning an API hub instance creates the system-defined addons and plugins.
/// const apihubInstance = new gcp.apihub.ApiHubInstance("apihub_instance", {
///     project: project.projectId,
///     location: "us-central1",
///     config: {
///         disableSearch: true,
///     },
/// }, {
///     dependsOn: [hostProjectRegistration],
/// });
/// const pluginInstance = new gcp.apihub.PluginInstance("plugin_instance", {
///     project: project.projectId,
///     location: "us-central1",
///     plugin: "system-edge-public-cloud",
///     pluginInstanceId: "edge-plugin-instance",
///     displayName: "Test Edge Public Cloud Plugin Instance",
///     sourceProjectId: "edge-org",
///     actions: [
///         {
///             actionId: "sync-metadata",
///         },
///         {
///             actionId: "sync-runtime-data",
///         },
///     ],
/// }, {
///     dependsOn: [apihubInstance],
/// });
/// const apihubAddonGatewayPlugin = new gcp.apihub.Addon("apihub_addon_gateway_plugin", {
///     project: project.projectId,
///     location: "us-central1",
///     addonId: "system-advanced-api-security",
///     config: {
///         gatewayPluginAddonConfig: {
///             gatewayPluginConfigs: [{
///                 pluginInstance: pluginInstance.id,
///                 apigeeEdgeConfig: {
///                     environmentFilter: {
///                         allEnvironments: false,
///                         environments: ["test"],
///                     },
///                 },
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="apihub-proj",
///     name="apihub-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[project]))
/// apihub_service = gcp.projects.Service("apihub_service",
///     project=project.project_id,
///     service="apihub.googleapis.com",
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// # An API hub instance requires a host project registration in the same location.
/// host_project_registration = gcp.apihub.HostProjectRegistration("host_project_registration",
///     project=project.project_id,
///     location="us-central1",
///     host_project_registration_id=project.project_id,
///     gcp_project=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[apihub_service]))
/// # Provisioning an API hub instance creates the system-defined addons and plugins.
/// apihub_instance = gcp.apihub.ApiHubInstance("apihub_instance",
///     project=project.project_id,
///     location="us-central1",
///     config={
///         "disable_search": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[host_project_registration]))
/// plugin_instance = gcp.apihub.PluginInstance("plugin_instance",
///     project=project.project_id,
///     location="us-central1",
///     plugin="system-edge-public-cloud",
///     plugin_instance_id="edge-plugin-instance",
///     display_name="Test Edge Public Cloud Plugin Instance",
///     source_project_id="edge-org",
///     actions=[
///         {
///             "action_id": "sync-metadata",
///         },
///         {
///             "action_id": "sync-runtime-data",
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[apihub_instance]))
/// apihub_addon_gateway_plugin = gcp.apihub.Addon("apihub_addon_gateway_plugin",
///     project=project.project_id,
///     location="us-central1",
///     addon_id="system-advanced-api-security",
///     config={
///         "gateway_plugin_addon_config": {
///             "gateway_plugin_configs": [{
///                 "plugin_instance": plugin_instance.id,
///                 "apigee_edge_config": {
///                     "environment_filter": {
///                         "all_environments": False,
///                         "environments": ["test"],
///                     },
///                 },
///             }],
///         },
///     })
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
///         ProjectId = "apihub-proj",
///         Name = "apihub-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
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
///     var apihubService = new Gcp.Projects.Service("apihub_service", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "apihub.googleapis.com",
///         DisableOnDestroy = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     // An API hub instance requires a host project registration in the same location.
///     var hostProjectRegistration = new Gcp.ApiHub.HostProjectRegistration("host_project_registration", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         HostProjectRegistrationId = project.ProjectId,
///         GcpProject = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apihubService,
///         },
///     });
///
///     // Provisioning an API hub instance creates the system-defined addons and plugins.
///     var apihubInstance = new Gcp.ApiHub.ApiHubInstance("apihub_instance", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         Config = new Gcp.ApiHub.Inputs.ApiHubInstanceConfigArgs
///         {
///             DisableSearch = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             hostProjectRegistration,
///         },
///     });
///
///     var pluginInstance = new Gcp.ApiHub.PluginInstance("plugin_instance", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         Plugin = "system-edge-public-cloud",
///         PluginInstanceId = "edge-plugin-instance",
///         DisplayName = "Test Edge Public Cloud Plugin Instance",
///         SourceProjectId = "edge-org",
///         Actions = new[]
///         {
///             new Gcp.ApiHub.Inputs.PluginInstanceActionArgs
///             {
///                 ActionId = "sync-metadata",
///             },
///             new Gcp.ApiHub.Inputs.PluginInstanceActionArgs
///             {
///                 ActionId = "sync-runtime-data",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apihubInstance,
///         },
///     });
///
///     var apihubAddonGatewayPlugin = new Gcp.ApiHub.Addon("apihub_addon_gateway_plugin", new()
///     {
///         Project = project.ProjectId,
///         Location = "us-central1",
///         AddonId = "system-advanced-api-security",
///         Config = new Gcp.ApiHub.Inputs.AddonConfigArgs
///         {
///             GatewayPluginAddonConfig = new Gcp.ApiHub.Inputs.AddonConfigGatewayPluginAddonConfigArgs
///             {
///                 GatewayPluginConfigs = new[]
///                 {
///                     new Gcp.ApiHub.Inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigArgs
///                     {
///                         PluginInstance = pluginInstance.Id,
///                         ApigeeEdgeConfig = new Gcp.ApiHub.Inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigArgs
///                         {
///                             EnvironmentFilter = new Gcp.ApiHub.Inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilterArgs
///                             {
///                                 AllEnvironments = false,
///                                 Environments = new[]
///                                 {
///                                     "test",
///                                 },
///                             },
///                         },
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/apihub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("apihub-proj"),
/// 			Name:           pulumi.String("apihub-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apihubService, err := projects.NewService(ctx, "apihub_service", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("apihub.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// An API hub instance requires a host project registration in the same location.
/// 		hostProjectRegistration, err := apihub.NewHostProjectRegistration(ctx, "host_project_registration", &apihub.HostProjectRegistrationArgs{
/// 			Project:                   project.ProjectId,
/// 			Location:                  pulumi.String("us-central1"),
/// 			HostProjectRegistrationId: project.ProjectId,
/// 			GcpProject: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apihubService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Provisioning an API hub instance creates the system-defined addons and plugins.
/// 		apihubInstance, err := apihub.NewApiHubInstance(ctx, "apihub_instance", &apihub.ApiHubInstanceArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("us-central1"),
/// 			Config: &apihub.ApiHubInstanceConfigArgs{
/// 				DisableSearch: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			hostProjectRegistration,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pluginInstance, err := apihub.NewPluginInstance(ctx, "plugin_instance", &apihub.PluginInstanceArgs{
/// 			Project:          project.ProjectId,
/// 			Location:         pulumi.String("us-central1"),
/// 			Plugin:           pulumi.String("system-edge-public-cloud"),
/// 			PluginInstanceId: pulumi.String("edge-plugin-instance"),
/// 			DisplayName:      pulumi.String("Test Edge Public Cloud Plugin Instance"),
/// 			SourceProjectId:  pulumi.String("edge-org"),
/// 			Actions: apihub.PluginInstanceActionArray{
/// 				&apihub.PluginInstanceActionArgs{
/// 					ActionId: pulumi.String("sync-metadata"),
/// 				},
/// 				&apihub.PluginInstanceActionArgs{
/// 					ActionId: pulumi.String("sync-runtime-data"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apihubInstance,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apihub.NewAddon(ctx, "apihub_addon_gateway_plugin", &apihub.AddonArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("us-central1"),
/// 			AddonId:  pulumi.String("system-advanced-api-security"),
/// 			Config: &apihub.AddonConfigArgs{
/// 				GatewayPluginAddonConfig: &apihub.AddonConfigGatewayPluginAddonConfigArgs{
/// 					GatewayPluginConfigs: apihub.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigArray{
/// 						&apihub.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigArgs{
/// 							PluginInstance: pluginInstance.ID(),
/// 							ApigeeEdgeConfig: &apihub.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigArgs{
/// 								EnvironmentFilter: &apihub.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilterArgs{
/// 									AllEnvironments: pulumi.Bool(false),
/// 									Environments: pulumi.StringArray{
/// 										pulumi.String("test"),
/// 									},
/// 								},
/// 							},
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
/// terraform {
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
///   lifecycle {
///     create_before_destroy = true
///   }
///   project_id      = "apihub-proj"
///   name            = "apihub-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on = [gcp_organizations_project.project]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "60s"
/// }
/// resource "gcp_projects_service" "apihub_service" {
///   depends_on = [time_sleep.wait_60_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project            = gcp_organizations_project.project.project_id
///   service            = "apihub.googleapis.com"
///   disable_on_destroy = false
/// }
/// # An API hub instance requires a host project registration in the same location.
/// resource "gcp_apihub_host_project_registration" "host_project_registration" {
///   depends_on = [gcp_projects_service.apihub_service]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project                      = gcp_organizations_project.project.project_id
///   location                     = "us-central1"
///   host_project_registration_id = gcp_organizations_project.project.project_id
///   gcp_project                  ="projects/${gcp_organizations_project.project.project_id}"
/// }
/// # Provisioning an API hub instance creates the system-defined addons and plugins.
/// resource "gcp_apihub_api_hub_instance" "apihub_instance" {
///   depends_on = [gcp_apihub_host_project_registration.host_project_registration]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = gcp_organizations_project.project.project_id
///   location = "us-central1"
///   config = {
///     disable_search = true
///   }
/// }
/// resource "gcp_apihub_plugin_instance" "plugin_instance" {
///   depends_on = [gcp_apihub_api_hub_instance.apihub_instance]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project            = gcp_organizations_project.project.project_id
///   location           = "us-central1"
///   plugin             = "system-edge-public-cloud"
///   plugin_instance_id = "edge-plugin-instance"
///   display_name       = "Test Edge Public Cloud Plugin Instance"
///   source_project_id  = "edge-org"
///   actions {
///     action_id = "sync-metadata"
///   }
///   actions {
///     action_id = "sync-runtime-data"
///   }
/// }
/// resource "gcp_apihub_addon" "apihub_addon_gateway_plugin" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = gcp_organizations_project.project.project_id
///   location = "us-central1"
///   addon_id = "system-advanced-api-security"
///   config = {
///     gateway_plugin_addon_config = {
///       gateway_plugin_configs = [{
///         plugin_instance = gcp_apihub_plugin_instance.plugin_instance.id
///         apigee_edge_config = {
///           environment_filter = {
///             all_environments = false
///             environments     = ["test"]
///           }
///         }
///       }]
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
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.apihub.HostProjectRegistration;
/// import com.pulumi.gcp.apihub.HostProjectRegistrationArgs;
/// import com.pulumi.gcp.apihub.ApiHubInstance;
/// import com.pulumi.gcp.apihub.ApiHubInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.ApiHubInstanceConfigArgs;
/// import com.pulumi.gcp.apihub.PluginInstance;
/// import com.pulumi.gcp.apihub.PluginInstanceArgs;
/// import com.pulumi.gcp.apihub.inputs.PluginInstanceActionArgs;
/// import com.pulumi.gcp.apihub.Addon;
/// import com.pulumi.gcp.apihub.AddonArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigGatewayPluginAddonConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigArgs;
/// import com.pulumi.gcp.apihub.inputs.AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilterArgs;
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
///             .projectId("apihub-proj")
///             .name("apihub-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var apihubService = new Service("apihubService", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("apihub.googleapis.com")
///             .disableOnDestroy(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         // An API hub instance requires a host project registration in the same location.
///         var hostProjectRegistration = new HostProjectRegistration("hostProjectRegistration", HostProjectRegistrationArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .hostProjectRegistrationId(project.projectId())
///             .gcpProject(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apihubService)
///                 .build());
///
///         // Provisioning an API hub instance creates the system-defined addons and plugins.
///         var apihubInstance = new ApiHubInstance("apihubInstance", ApiHubInstanceArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .config(ApiHubInstanceConfigArgs.builder()
///                 .disableSearch(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(hostProjectRegistration)
///                 .build());
///
///         var pluginInstance = new PluginInstance("pluginInstance", PluginInstanceArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .plugin("system-edge-public-cloud")
///             .pluginInstanceId("edge-plugin-instance")
///             .displayName("Test Edge Public Cloud Plugin Instance")
///             .sourceProjectId("edge-org")
///             .actions(
///                 PluginInstanceActionArgs.builder()
///                     .actionId("sync-metadata")
///                     .build(),
///                 PluginInstanceActionArgs.builder()
///                     .actionId("sync-runtime-data")
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apihubInstance)
///                 .build());
///
///         var apihubAddonGatewayPlugin = new Addon("apihubAddonGatewayPlugin", AddonArgs.builder()
///             .project(project.projectId())
///             .location("us-central1")
///             .addonId("system-advanced-api-security")
///             .config(AddonConfigArgs.builder()
///                 .gatewayPluginAddonConfig(AddonConfigGatewayPluginAddonConfigArgs.builder()
///                     .gatewayPluginConfigs(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigArgs.builder()
///                         .pluginInstance(pluginInstance.id())
///                         .apigeeEdgeConfig(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigArgs.builder()
///                             .environmentFilter(AddonConfigGatewayPluginAddonConfigGatewayPluginConfigApigeeEdgeConfigEnvironmentFilterArgs.builder()
///                                 .allEnvironments(false)
///                                 .environments("test")
///                                 .build())
///                             .build())
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
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: apihub-proj
///       name: apihub-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${project}
///   apihubService:
///     type: gcp:projects:Service
///     name: apihub_service
///     properties:
///       project: ${project.projectId}
///       service: apihub.googleapis.com
///       disableOnDestroy: false
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   # An API hub instance requires a host project registration in the same location.
///   hostProjectRegistration:
///     type: gcp:apihub:HostProjectRegistration
///     name: host_project_registration
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       hostProjectRegistrationId: ${project.projectId}
///       gcpProject: projects/${project.projectId}
///     options:
///       dependsOn:
///         - ${apihubService}
///   # Provisioning an API hub instance creates the system-defined addons and plugins.
///   apihubInstance:
///     type: gcp:apihub:ApiHubInstance
///     name: apihub_instance
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       config:
///         disableSearch: true
///     options:
///       dependsOn:
///         - ${hostProjectRegistration}
///   pluginInstance:
///     type: gcp:apihub:PluginInstance
///     name: plugin_instance
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       plugin: system-edge-public-cloud
///       pluginInstanceId: edge-plugin-instance
///       displayName: Test Edge Public Cloud Plugin Instance
///       sourceProjectId: edge-org
///       actions:
///         - actionId: sync-metadata
///         - actionId: sync-runtime-data
///     options:
///       dependsOn:
///         - ${apihubInstance}
///   apihubAddonGatewayPlugin:
///     type: gcp:apihub:Addon
///     name: apihub_addon_gateway_plugin
///     properties:
///       project: ${project.projectId}
///       location: us-central1
///       addonId: system-advanced-api-security
///       config:
///         gatewayPluginAddonConfig:
///           gatewayPluginConfigs:
///             - pluginInstance: ${pluginInstance.id}
///               apigeeEdgeConfig:
///                 environmentFilter:
///                   allEnvironments: false
///                   environments:
///                     - test
/// ```
///
///
/// ## Import
///
/// Addon can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/addons/{{addon_id}}`
/// * `{{project}}/{{location}}/{{addon_id}}`
/// * `{{location}}/{{addon_id}}`
///
///
/// When using the `pulumi import` command, Addon can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/addon:Addon default projects/{{project}}/locations/{{location}}/addons/{{addon_id}}
/// $ pulumi import gcp:apihub/addon:Addon default {{project}}/{{location}}/{{addon_id}}
/// $ pulumi import gcp:apihub/addon:Addon default {{location}}/{{addon_id}}
/// ```
class Addon extends pulumi.CustomResource {
  /// The ID of the addon.
  late final pulumi.Output<String> addonId;
  /// The Vertex AI region where the BoostSpec Gemini model calls run for this API Hub instance.
  late final pulumi.Output<String> boostSpecGeminiRegionId;
  /// The configuration of the addon.
  /// Structure is documented below.
  late final pulumi.Output<AddonConfig> config;
  /// The time at which the addon was created.
  late final pulumi.Output<String> createTime;
  /// The data source on which the addon operates.
  late final pulumi.Output<String> dataSource;
  /// The description of the addon.
  late final pulumi.Output<String> description;
  /// The display name of the addon.
  late final pulumi.Output<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The name of the addon. Format: `projects/{project}/locations/{location}/addons/{addon}`.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The state of the addon.
  late final pulumi.Output<String> state;
  /// The time at which the addon was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Addon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Addon]. {@macro pulumi_apihub_addon_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Addon(
    String name, {
    AddonArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/addon:Addon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    addonId = registerOutput<String>('addonId');
    boostSpecGeminiRegionId = registerOutput<String>('boostSpecGeminiRegionId');
    config = registerOutput<AddonConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Addon] resource's state with the given [name] and [id].
  static Addon get(
    String name,
    pulumi.Input<String> id, {
    AddonState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Addon._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Addon._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/addon:Addon',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonId = registerOutput<String>('addonId');
    boostSpecGeminiRegionId = registerOutput<String>('boostSpecGeminiRegionId');
    config = registerOutput<AddonConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Addon] resource.
  Addon.reference(String urn)
    : super(
        'gcp:apihub/addon:Addon',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addonId = registerOutput<String>('addonId');
    boostSpecGeminiRegionId = registerOutput<String>('boostSpecGeminiRegionId');
    config = registerOutput<AddonConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddonConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
  }
}

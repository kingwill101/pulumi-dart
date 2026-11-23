import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_args.dart';
import 'repository_initial_config.dart';
import 'repository_scan_config.dart';
import 'repository_state.dart';
import 'repository_uri.dart';

/// Repositories store source code. It supports all Git SCM client commands and has built-in pull requests and issue tracking. Both HTTPS and SSH authentication are supported.
///
///
/// To get more information about Repository, see:
///
/// * [API documentation](https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
///
/// ## Example Usage
///
/// ### Secure Source Manager Repository Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "europe-west4",
///     instanceId: "my-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const _default = new gcp.securesourcemanager.Repository("default", {
///     location: "europe-west4",
///     repositoryId: "my-repository",
///     instance: instance.name,
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="europe-west4",
///     instance_id="my-instance",
///     deletion_policy="PREVENT")
/// default = gcp.securesourcemanager.Repository("default",
///     location="europe-west4",
///     repository_id="my-repository",
///     instance=instance.name,
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "europe-west4",
///         InstanceId = "my-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Repository("default", new()
///     {
///         Location = "europe-west4",
///         RepositoryId = "my-repository",
///         Instance = instance.Name,
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("europe-west4"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepository(ctx, "default", &securesourcemanager.RepositoryArgs{
/// 			Location:       pulumi.String("europe-west4"),
/// 			RepositoryId:   pulumi.String("my-repository"),
/// 			Instance:       instance.Name,
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
///   }
/// }
///
/// resource "gcp_securesourcemanager_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "europe-west4"
///   instance_id     = "my-instance"
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_securesourcemanager_repository" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "europe-west4"
///   repository_id   = "my-repository"
///   instance        = gcp_securesourcemanager_instance.instance.name
///   deletion_policy = "PREVENT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("europe-west4")
///             .instanceId("my-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("europe-west4")
///             .repositoryId("my-repository")
///             .instance(instance.name())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: europe-west4
///       instanceId: my-instance
///       deletionPolicy: PREVENT
///   default:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       location: europe-west4
///       repositoryId: my-repository
///       instance: ${instance.name}
///       deletionPolicy: PREVENT
/// ```
///
///
/// ### Secure Source Manager Repository Secret Scanning
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "europe-west4",
///     instanceId: "my-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const template = new gcp.dataloss.PreventionInspectTemplate("template", {
///     parent: "projects/my-project-name/locations/europe-west4",
///     displayName: "Test Inspect Template",
///     inspectConfig: {
///         infoTypes: [{
///             name: "EMAIL_ADDRESS",
///         }],
///     },
/// });
/// const project = gcp.organizations.getProject({});
/// const ssmP4saDlpReader = new gcp.projects.IAMMember("ssm_p4sa_dlp_reader", {
///     project: project.then(project => project.projectId),
///     role: "roles/dlp.inspectTemplatesReader",
///     member: project.then(project => `serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com`),
/// });
/// // IAM permissions can take time to propagate
/// const wait120Seconds = new time.Sleep("wait_120_seconds", {createDuration: "120s"}, {
///     dependsOn: [ssmP4saDlpReader],
/// });
/// const _default = new gcp.securesourcemanager.Repository("default", {
///     location: "europe-west4",
///     repositoryId: "my-repository",
///     instance: instance.name,
///     description: "This is a test repository",
///     deletionPolicy: "PREVENT",
///     scanConfig: {
///         secretScanConfig: {
///             enabled: true,
///             inspectTemplate: template.id,
///         },
///     },
/// }, {
///     dependsOn: [wait120Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="europe-west4",
///     instance_id="my-instance",
///     deletion_policy="PREVENT")
/// template = gcp.dataloss.PreventionInspectTemplate("template",
///     parent="projects/my-project-name/locations/europe-west4",
///     display_name="Test Inspect Template",
///     inspect_config={
///         "info_types": [{
///             "name": "EMAIL_ADDRESS",
///         }],
///     })
/// project = gcp.organizations.get_project()
/// ssm_p4sa_dlp_reader = gcp.projects.IAMMember("ssm_p4sa_dlp_reader",
///     project=project.project_id,
///     role="roles/dlp.inspectTemplatesReader",
///     member=f"serviceAccount:service-{project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com")
/// # IAM permissions can take time to propagate
/// wait120_seconds = time.Sleep("wait_120_seconds", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[ssm_p4sa_dlp_reader]))
/// default = gcp.securesourcemanager.Repository("default",
///     location="europe-west4",
///     repository_id="my-repository",
///     instance=instance.name,
///     description="This is a test repository",
///     deletion_policy="PREVENT",
///     scan_config={
///         "secret_scan_config": {
///             "enabled": True,
///             "inspect_template": template.id,
///         },
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait120_seconds]))
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
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "europe-west4",
///         InstanceId = "my-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var template = new Gcp.DataLoss.PreventionInspectTemplate("template", new()
///     {
///         Parent = "projects/my-project-name/locations/europe-west4",
///         DisplayName = "Test Inspect Template",
///         InspectConfig = new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigArgs
///         {
///             InfoTypes = new[]
///             {
///                 new Gcp.DataLoss.Inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs
///                 {
///                     Name = "EMAIL_ADDRESS",
///                 },
///             },
///         },
///     });
///
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var ssmP4saDlpReader = new Gcp.Projects.IAMMember("ssm_p4sa_dlp_reader", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Role = "roles/dlp.inspectTemplatesReader",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@gcp-sa-sourcemanager.iam.gserviceaccount.com",
///     });
///
///     // IAM permissions can take time to propagate
///     var wait120Seconds = new Time.Sleep("wait_120_seconds", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             ssmP4saDlpReader,
///         },
///     });
///
///     var @default = new Gcp.SecureSourceManager.Repository("default", new()
///     {
///         Location = "europe-west4",
///         RepositoryId = "my-repository",
///         Instance = instance.Name,
///         Description = "This is a test repository",
///         DeletionPolicy = "PREVENT",
///         ScanConfig = new Gcp.SecureSourceManager.Inputs.RepositoryScanConfigArgs
///         {
///             SecretScanConfig = new Gcp.SecureSourceManager.Inputs.RepositoryScanConfigSecretScanConfigArgs
///             {
///                 Enabled = true,
///                 InspectTemplate = template.Id,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120Seconds,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/dataloss"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("europe-west4"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		template, err := dataloss.NewPreventionInspectTemplate(ctx, "template", &dataloss.PreventionInspectTemplateArgs{
/// 			Parent:      pulumi.String("projects/my-project-name/locations/europe-west4"),
/// 			DisplayName: pulumi.String("Test Inspect Template"),
/// 			InspectConfig: &dataloss.PreventionInspectTemplateInspectConfigArgs{
/// 				InfoTypes: dataloss.PreventionInspectTemplateInspectConfigInfoTypeArray{
/// 					&dataloss.PreventionInspectTemplateInspectConfigInfoTypeArgs{
/// 						Name: pulumi.String("EMAIL_ADDRESS"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ssmP4saDlpReader, err := projects.NewIAMMember(ctx, "ssm_p4sa_dlp_reader", &projects.IAMMemberArgs{
/// 			Project: pulumi.String(project.ProjectId),
/// 			Role:    pulumi.String("roles/dlp.inspectTemplatesReader"),
/// 			Member:  pulumi.Sprintf("serviceAccount:service-%v@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// IAM permissions can take time to propagate
/// 		wait120Seconds, err := time.NewSleep(ctx, "wait_120_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			ssmP4saDlpReader,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepository(ctx, "default", &securesourcemanager.RepositoryArgs{
/// 			Location:       pulumi.String("europe-west4"),
/// 			RepositoryId:   pulumi.String("my-repository"),
/// 			Instance:       instance.Name,
/// 			Description:    pulumi.String("This is a test repository"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 			ScanConfig: &securesourcemanager.RepositoryScanConfigArgs{
/// 				SecretScanConfig: &securesourcemanager.RepositoryScanConfigSecretScanConfigArgs{
/// 					Enabled:         pulumi.Bool(true),
/// 					InspectTemplate: template.ID(),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120Seconds,
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
/// data "gcp_organizations_project" "project" {
/// }
///
/// resource "gcp_securesourcemanager_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "europe-west4"
///   instance_id     = "my-instance"
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_dataloss_prevention_inspect_template" "template" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   parent       = "projects/my-project-name/locations/europe-west4"
///   display_name = "Test Inspect Template"
///   inspect_config = {
///     info_types = [{
///       name = "EMAIL_ADDRESS"
///     }]
///   }
/// }
/// resource "gcp_projects_i_a_m_member" "ssm_p4sa_dlp_reader" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project = data.gcp_organizations_project.project.project_id
///   role    = "roles/dlp.inspectTemplatesReader"
///   member  ="serviceAccount:service-${data.gcp_organizations_project.project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com"
/// }
/// # IAM permissions can take time to propagate
/// resource "time_sleep" "wait_120_seconds" {
///   depends_on = [gcp_projects_i_a_m_member.ssm_p4sa_dlp_reader]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "120s"
/// }
/// resource "gcp_securesourcemanager_repository" "default" {
///   depends_on = [time_sleep.wait_120_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "europe-west4"
///   repository_id   = "my-repository"
///   instance        = gcp_securesourcemanager_instance.instance.name
///   description     = "This is a test repository"
///   deletion_policy = "PREVENT"
///   scan_config = {
///     secret_scan_config = {
///       enabled          = true
///       inspect_template = gcp_dataloss_prevention_inspect_template.template.id
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
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplate;
/// import com.pulumi.gcp.dataloss.PreventionInspectTemplateArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigArgs;
/// import com.pulumi.gcp.dataloss.inputs.PreventionInspectTemplateInspectConfigInfoTypeArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.RepositoryScanConfigArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.RepositoryScanConfigSecretScanConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("europe-west4")
///             .instanceId("my-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var template = new PreventionInspectTemplate("template", PreventionInspectTemplateArgs.builder()
///             .parent("projects/my-project-name/locations/europe-west4")
///             .displayName("Test Inspect Template")
///             .inspectConfig(PreventionInspectTemplateInspectConfigArgs.builder()
///                 .infoTypes(PreventionInspectTemplateInspectConfigInfoTypeArgs.builder()
///                     .name("EMAIL_ADDRESS")
///                     .build())
///                 .build())
///             .build());
///
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var ssmP4saDlpReader = new IAMMember("ssmP4saDlpReader", IAMMemberArgs.builder()
///             .project(project.projectId())
///             .role("roles/dlp.inspectTemplatesReader")
///             .member(String.format("serviceAccount:service-%s@gcp-sa-sourcemanager.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         // IAM permissions can take time to propagate
///         var wait120Seconds = new Sleep("wait120Seconds", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(ssmP4saDlpReader)
///                 .build());
///
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("europe-west4")
///             .repositoryId("my-repository")
///             .instance(instance.name())
///             .description("This is a test repository")
///             .deletionPolicy("PREVENT")
///             .scanConfig(RepositoryScanConfigArgs.builder()
///                 .secretScanConfig(RepositoryScanConfigSecretScanConfigArgs.builder()
///                     .enabled(true)
///                     .inspectTemplate(template.id())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: europe-west4
///       instanceId: my-instance
///       deletionPolicy: PREVENT
///   template:
///     type: gcp:dataloss:PreventionInspectTemplate
///     properties:
///       parent: projects/my-project-name/locations/europe-west4
///       displayName: Test Inspect Template
///       inspectConfig:
///         infoTypes:
///           - name: EMAIL_ADDRESS
///   ssmP4saDlpReader:
///     type: gcp:projects:IAMMember
///     name: ssm_p4sa_dlp_reader
///     properties:
///       project: ${project.projectId}
///       role: roles/dlp.inspectTemplatesReader
///       member: serviceAccount:service-${project.number}@gcp-sa-sourcemanager.iam.gserviceaccount.com
///   # IAM permissions can take time to propagate
///   wait120Seconds:
///     type: time:Sleep
///     name: wait_120_seconds
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${ssmP4saDlpReader}
///   default:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       location: europe-west4
///       repositoryId: my-repository
///       instance: ${instance.name}
///       description: This is a test repository
///       deletionPolicy: PREVENT
///       scanConfig:
///         secretScanConfig:
///           enabled: true
///           inspectTemplate: ${template.id}
///     options:
///       dependsOn:
///         - ${wait120Seconds}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ### Secure Source Manager Repository Initial Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const instance = new gcp.securesourcemanager.Instance("instance", {
///     location: "asia-east1",
///     instanceId: "my-instance",
///     deletionPolicy: "PREVENT",
/// });
/// const sa = new gcp.serviceaccount.Account("sa", {
///     accountId: "my-sa",
///     displayName: "Test Service Account",
/// });
/// const _default = new gcp.securesourcemanager.Repository("default", {
///     location: "asia-east1",
///     repositoryId: "my-repository",
///     instance: instance.name,
///     description: "This is a test repository",
///     serviceAccount: sa.email,
///     initialConfig: {
///         defaultBranch: "main",
///         gitignores: ["python"],
///         license: "mit",
///         readme: "default",
///     },
///     deletionPolicy: "PREVENT",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// instance = gcp.securesourcemanager.Instance("instance",
///     location="asia-east1",
///     instance_id="my-instance",
///     deletion_policy="PREVENT")
/// sa = gcp.serviceaccount.Account("sa",
///     account_id="my-sa",
///     display_name="Test Service Account")
/// default = gcp.securesourcemanager.Repository("default",
///     location="asia-east1",
///     repository_id="my-repository",
///     instance=instance.name,
///     description="This is a test repository",
///     service_account=sa.email,
///     initial_config={
///         "default_branch": "main",
///         "gitignores": ["python"],
///         "license": "mit",
///         "readme": "default",
///     },
///     deletion_policy="PREVENT")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instance = new Gcp.SecureSourceManager.Instance("instance", new()
///     {
///         Location = "asia-east1",
///         InstanceId = "my-instance",
///         DeletionPolicy = "PREVENT",
///     });
///
///     var sa = new Gcp.ServiceAccount.Account("sa", new()
///     {
///         AccountId = "my-sa",
///         DisplayName = "Test Service Account",
///     });
///
///     var @default = new Gcp.SecureSourceManager.Repository("default", new()
///     {
///         Location = "asia-east1",
///         RepositoryId = "my-repository",
///         Instance = instance.Name,
///         Description = "This is a test repository",
///         ServiceAccount = sa.Email,
///         InitialConfig = new Gcp.SecureSourceManager.Inputs.RepositoryInitialConfigArgs
///         {
///             DefaultBranch = "main",
///             Gitignores = new[]
///             {
///                 "python",
///             },
///             License = "mit",
///             Readme = "default",
///         },
///         DeletionPolicy = "PREVENT",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/securesourcemanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instance, err := securesourcemanager.NewInstance(ctx, "instance", &securesourcemanager.InstanceArgs{
/// 			Location:       pulumi.String("asia-east1"),
/// 			InstanceId:     pulumi.String("my-instance"),
/// 			DeletionPolicy: pulumi.String("PREVENT"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		sa, err := serviceaccount.NewAccount(ctx, "sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-sa"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securesourcemanager.NewRepository(ctx, "default", &securesourcemanager.RepositoryArgs{
/// 			Location:       pulumi.String("asia-east1"),
/// 			RepositoryId:   pulumi.String("my-repository"),
/// 			Instance:       instance.Name,
/// 			Description:    pulumi.String("This is a test repository"),
/// 			ServiceAccount: sa.Email,
/// 			InitialConfig: &securesourcemanager.RepositoryInitialConfigArgs{
/// 				DefaultBranch: pulumi.String("main"),
/// 				Gitignores: pulumi.StringArray{
/// 					pulumi.String("python"),
/// 				},
/// 				License: pulumi.String("mit"),
/// 				Readme:  pulumi.String("default"),
/// 			},
/// 			DeletionPolicy: pulumi.String("PREVENT"),
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
///   }
/// }
///
/// resource "gcp_securesourcemanager_instance" "instance" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "asia-east1"
///   instance_id     = "my-instance"
///   deletion_policy = "PREVENT"
/// }
/// resource "gcp_serviceaccount_account" "sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "my-sa"
///   display_name = "Test Service Account"
/// }
/// resource "gcp_securesourcemanager_repository" "default" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   location        = "asia-east1"
///   repository_id   = "my-repository"
///   instance        = gcp_securesourcemanager_instance.instance.name
///   description     = "This is a test repository"
///   service_account = gcp_serviceaccount_account.sa.email
///   initial_config = {
///     default_branch = "main"
///     gitignores     = ["python"]
///     license        = "mit"
///     readme         = "default"
///   }
///   deletion_policy = "PREVENT"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.securesourcemanager.Instance;
/// import com.pulumi.gcp.securesourcemanager.InstanceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.securesourcemanager.Repository;
/// import com.pulumi.gcp.securesourcemanager.RepositoryArgs;
/// import com.pulumi.gcp.securesourcemanager.inputs.RepositoryInitialConfigArgs;
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
///         var instance = new Instance("instance", InstanceArgs.builder()
///             .location("asia-east1")
///             .instanceId("my-instance")
///             .deletionPolicy("PREVENT")
///             .build());
///
///         var sa = new Account("sa", AccountArgs.builder()
///             .accountId("my-sa")
///             .displayName("Test Service Account")
///             .build());
///
///         var default_ = new Repository("default", RepositoryArgs.builder()
///             .location("asia-east1")
///             .repositoryId("my-repository")
///             .instance(instance.name())
///             .description("This is a test repository")
///             .serviceAccount(sa.email())
///             .initialConfig(RepositoryInitialConfigArgs.builder()
///                 .defaultBranch("main")
///                 .gitignores("python")
///                 .license("mit")
///                 .readme("default")
///                 .build())
///             .deletionPolicy("PREVENT")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: gcp:securesourcemanager:Instance
///     properties:
///       location: asia-east1
///       instanceId: my-instance
///       deletionPolicy: PREVENT
///   sa:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-sa
///       displayName: Test Service Account
///   default:
///     type: gcp:securesourcemanager:Repository
///     properties:
///       location: asia-east1
///       repositoryId: my-repository
///       instance: ${instance.name}
///       description: This is a test repository
///       serviceAccount: ${sa.email}
///       initialConfig:
///         defaultBranch: main
///         gitignores:
///           - python
///         license: mit
///         readme: default
///       deletionPolicy: PREVENT
/// ```
///
///
/// ## Import
///
/// Repository can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}`
/// * `{{project}}/{{location}}/{{repository_id}}`
/// * `{{location}}/{{repository_id}}`
/// * `{{repository_id}}`
///
///
/// When using the `pulumi import` command, Repository can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/repository:Repository default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{project}}/{{location}}/{{repository_id}}
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{location}}/{{repository_id}}
/// $ pulumi import gcp:securesourcemanager/repository:Repository default {{repository_id}}
/// ```
class Repository extends pulumi.CustomResource {
  /// Time the repository was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Description of the repository, which cannot exceed 500 characters.
  late final pulumi.Output<String?> description;
  /// Initial configurations for the repository.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryInitialConfig?> initialConfig;
  /// The name of the instance in which the repository is hosted.
  late final pulumi.Output<String> instance;
  /// The location for the Repository.
  late final pulumi.Output<String> location;
  /// The resource name for the Repository.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The ID for the Repository.
  late final pulumi.Output<String> repositoryId;
  /// Provides configuration for scanning.
  /// Structure is documented below.
  late final pulumi.Output<RepositoryScanConfig?> scanConfig;
  /// Repository level service account.
  late final pulumi.Output<String?> serviceAccount;
  /// Unique identifier of the repository.
  late final pulumi.Output<String> uid;
  /// Time the repository was updated in UTC.
  late final pulumi.Output<String> updateTime;
  /// URIs for the repository.
  /// Structure is documented below.
  late final pulumi.Output<List<RepositoryUri>> uris;

  /// Creates a new [Repository].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Repository]. {@macro pulumi_securesourcemanager_repository_repository_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Repository(
    String name, {
    RepositoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repository:Repository',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialConfig = registerOutput<RepositoryInitialConfig?>('initialConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryInitialConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    scanConfig = registerOutput<RepositoryScanConfig?>('scanConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryScanConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uris = registerOutput<List<RepositoryUri>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUri>(guardedValue, (value) => RepositoryUri.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Repository] resource's state with the given [name] and [id].
  static Repository get(
    String name,
    pulumi.Input<String> id, {
    RepositoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Repository._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Repository._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/repository:Repository',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialConfig = registerOutput<RepositoryInitialConfig?>('initialConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryInitialConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    scanConfig = registerOutput<RepositoryScanConfig?>('scanConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryScanConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uris = registerOutput<List<RepositoryUri>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUri>(guardedValue, (value) => RepositoryUri.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Repository] resource.
  Repository.reference(String urn)
    : super(
        'gcp:securesourcemanager/repository:Repository',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    initialConfig = registerOutput<RepositoryInitialConfig?>('initialConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryInitialConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    scanConfig = registerOutput<RepositoryScanConfig?>('scanConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryScanConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceAccount = registerOutput<String?>('serviceAccount');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    uris = registerOutput<List<RepositoryUri>>('uris', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RepositoryUri>(guardedValue, (value) => RepositoryUri.fromMap((value as Map).cast<String, dynamic>())); });
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_project_attachment_args.dart';
import 'runtime_project_attachment_state.dart';

/// Runtime project attachment represents an attachment from the runtime project to the host project. API Hub looks for deployments in the attached runtime projects and creates corresponding resources in API Hub for the discovered deployments.
///
///
///
/// ## Example Usage
///
/// ### Apihub Runtime Project Attachment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const hostProject = new gcp.organizations.Project("host_project", {
///     name: "h-ah-proj",
///     projectId: "h-ah-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [hostProject],
/// });
/// // Enable API hub API on host project
/// const apihubService = new gcp.projects.Service("apihub_service", {
///     project: hostProject.projectId,
///     service: "apihub.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const hostProjectReg = new gcp.apihub.HostProjectRegistration("host_project_reg", {
///     project: hostProject.projectId,
///     location: "asia-south1",
///     hostProjectRegistrationId: hostProject.projectId,
///     gcpProject: pulumi.interpolate`projects/${hostProject.projectId}`,
/// }, {
///     dependsOn: [apihubService],
/// });
/// const runtimeProject = new gcp.organizations.Project("runtime_project", {
///     name: "r-ah-proj",
///     projectId: "r-ah-proj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable API hub API on runtime project
/// const apihubServiceRuntime = new gcp.projects.Service("apihub_service_runtime", {
///     project: runtimeProject.projectId,
///     service: "apihub.googleapis.com",
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// const apihubRuntimeProjectAttachment = new gcp.apihub.RuntimeProjectAttachment("apihub_runtime_project_attachment", {
///     project: hostProject.projectId,
///     location: "asia-south1",
///     runtimeProjectAttachmentId: runtimeProject.projectId,
///     runtimeProject: pulumi.interpolate`projects/${runtimeProject.projectId}`,
/// }, {
///     dependsOn: [
///         hostProjectReg,
///         apihubServiceRuntime,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// host_project = gcp.organizations.Project("host_project",
///     name="h-ah-proj",
///     project_id="h-ah-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[host_project]))
/// # Enable API hub API on host project
/// apihub_service = gcp.projects.Service("apihub_service",
///     project=host_project.project_id,
///     service="apihub.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// host_project_reg = gcp.apihub.HostProjectRegistration("host_project_reg",
///     project=host_project.project_id,
///     location="asia-south1",
///     host_project_registration_id=host_project.project_id,
///     gcp_project=host_project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[apihub_service]))
/// runtime_project = gcp.organizations.Project("runtime_project",
///     name="r-ah-proj",
///     project_id="r-ah-proj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable API hub API on runtime project
/// apihub_service_runtime = gcp.projects.Service("apihub_service_runtime",
///     project=runtime_project.project_id,
///     service="apihub.googleapis.com",
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
/// apihub_runtime_project_attachment = gcp.apihub.RuntimeProjectAttachment("apihub_runtime_project_attachment",
///     project=host_project.project_id,
///     location="asia-south1",
///     runtime_project_attachment_id=runtime_project.project_id,
///     runtime_project=runtime_project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[
///             host_project_reg,
///             apihub_service_runtime,
///         ]))
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
///     var hostProject = new Gcp.Organizations.Project("host_project", new()
///     {
///         Name = "h-ah-proj",
///         ProjectId = "h-ah-proj",
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
///             hostProject,
///         },
///     });
///
///     // Enable API hub API on host project
///     var apihubService = new Gcp.Projects.Service("apihub_service", new()
///     {
///         Project = hostProject.ProjectId,
///         ServiceName = "apihub.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var hostProjectReg = new Gcp.ApiHub.HostProjectRegistration("host_project_reg", new()
///     {
///         Project = hostProject.ProjectId,
///         Location = "asia-south1",
///         HostProjectRegistrationId = hostProject.ProjectId,
///         GcpProject = hostProject.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apihubService,
///         },
///     });
///
///     var runtimeProject = new Gcp.Organizations.Project("runtime_project", new()
///     {
///         Name = "r-ah-proj",
///         ProjectId = "r-ah-proj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable API hub API on runtime project
///     var apihubServiceRuntime = new Gcp.Projects.Service("apihub_service_runtime", new()
///     {
///         Project = runtimeProject.ProjectId,
///         ServiceName = "apihub.googleapis.com",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
///         },
///     });
///
///     var apihubRuntimeProjectAttachment = new Gcp.ApiHub.RuntimeProjectAttachment("apihub_runtime_project_attachment", new()
///     {
///         Project = hostProject.ProjectId,
///         Location = "asia-south1",
///         RuntimeProjectAttachmentId = runtimeProject.ProjectId,
///         RuntimeProject = runtimeProject.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             hostProjectReg,
///             apihubServiceRuntime,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apihub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		hostProject, err := organizations.NewProject(ctx, "host_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("h-ah-proj"),
/// 			ProjectId:      pulumi.String("h-ah-proj"),
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
/// 			hostProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable API hub API on host project
/// 		apihubService, err := projects.NewService(ctx, "apihub_service", &projects.ServiceArgs{
/// 			Project: hostProject.ProjectId,
/// 			Service: pulumi.String("apihub.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hostProjectReg, err := apihub.NewHostProjectRegistration(ctx, "host_project_reg", &apihub.HostProjectRegistrationArgs{
/// 			Project:                   hostProject.ProjectId,
/// 			Location:                  pulumi.String("asia-south1"),
/// 			HostProjectRegistrationId: hostProject.ProjectId,
/// 			GcpProject: hostProject.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apihubService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		runtimeProject, err := organizations.NewProject(ctx, "runtime_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("r-ah-proj"),
/// 			ProjectId:      pulumi.String("r-ah-proj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable API hub API on runtime project
/// 		apihubServiceRuntime, err := projects.NewService(ctx, "apihub_service_runtime", &projects.ServiceArgs{
/// 			Project: runtimeProject.ProjectId,
/// 			Service: pulumi.String("apihub.googleapis.com"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apihub.NewRuntimeProjectAttachment(ctx, "apihub_runtime_project_attachment", &apihub.RuntimeProjectAttachmentArgs{
/// 			Project:                    hostProject.ProjectId,
/// 			Location:                   pulumi.String("asia-south1"),
/// 			RuntimeProjectAttachmentId: runtimeProject.ProjectId,
/// 			RuntimeProject: runtimeProject.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			hostProjectReg,
/// 			apihubServiceRuntime,
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
/// resource "gcp_organizations_project" "host_project" {
///   name            = "h-ah-proj"
///   project_id      = "h-ah-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_organizations_project.host_project]
///   create_duration = "60s"
/// }
/// # Enable API hub API on host project
/// resource "gcp_projects_service" "apihub_service" {
///   depends_on = [time_sleep.wait_60_seconds]
///   project    = gcp_organizations_project.host_project.project_id
///   service    = "apihub.googleapis.com"
/// }
/// resource "gcp_apihub_hostprojectregistration" "host_project_reg" {
///   depends_on                   = [gcp_projects_service.apihub_service]
///   project                      = gcp_organizations_project.host_project.project_id
///   location                     = "asia-south1"
///   host_project_registration_id = gcp_organizations_project.host_project.project_id
///   gcp_project                  ="projects/${gcp_organizations_project.host_project.project_id}"
/// }
/// resource "gcp_organizations_project" "runtime_project" {
///   name            = "r-ah-proj"
///   project_id      = "r-ah-proj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Enable API hub API on runtime project
/// resource "gcp_projects_service" "apihub_service_runtime" {
///   depends_on = [time_sleep.wait_60_seconds]
///   project    = gcp_organizations_project.runtime_project.project_id
///   service    = "apihub.googleapis.com"
/// }
/// resource "gcp_apihub_runtimeprojectattachment" "apihub_runtime_project_attachment" {
///   depends_on                    = [gcp_apihub_hostprojectregistration.host_project_reg, gcp_projects_service.apihub_service_runtime]
///   project                       = gcp_organizations_project.host_project.project_id
///   location                      = "asia-south1"
///   runtime_project_attachment_id = gcp_organizations_project.runtime_project.project_id
///   runtime_project               ="projects/${gcp_organizations_project.runtime_project.project_id}"
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
/// import com.pulumi.gcp.apihub.RuntimeProjectAttachment;
/// import com.pulumi.gcp.apihub.RuntimeProjectAttachmentArgs;
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
///         var hostProject = new Project("hostProject", ProjectArgs.builder()
///             .name("h-ah-proj")
///             .projectId("h-ah-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(hostProject)
///                 .build());
///
///         // Enable API hub API on host project
///         var apihubService = new Service("apihubService", ServiceArgs.builder()
///             .project(hostProject.projectId())
///             .service("apihub.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var hostProjectReg = new HostProjectRegistration("hostProjectReg", HostProjectRegistrationArgs.builder()
///             .project(hostProject.projectId())
///             .location("asia-south1")
///             .hostProjectRegistrationId(hostProject.projectId())
///             .gcpProject(hostProject.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(apihubService)
///                 .build());
///
///         var runtimeProject = new Project("runtimeProject", ProjectArgs.builder()
///             .name("r-ah-proj")
///             .projectId("r-ah-proj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable API hub API on runtime project
///         var apihubServiceRuntime = new Service("apihubServiceRuntime", ServiceArgs.builder()
///             .project(runtimeProject.projectId())
///             .service("apihub.googleapis.com")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///         var apihubRuntimeProjectAttachment = new RuntimeProjectAttachment("apihubRuntimeProjectAttachment", RuntimeProjectAttachmentArgs.builder()
///             .project(hostProject.projectId())
///             .location("asia-south1")
///             .runtimeProjectAttachmentId(runtimeProject.projectId())
///             .runtimeProject(runtimeProject.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     hostProjectReg,
///                     apihubServiceRuntime)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hostProject:
///     type: gcp:organizations:Project
///     name: host_project
///     properties:
///       name: h-ah-proj
///       projectId: h-ah-proj
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
///         - ${hostProject}
///   # Enable API hub API on host project
///   apihubService:
///     type: gcp:projects:Service
///     name: apihub_service
///     properties:
///       project: ${hostProject.projectId}
///       service: apihub.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   hostProjectReg:
///     type: gcp:apihub:HostProjectRegistration
///     name: host_project_reg
///     properties:
///       project: ${hostProject.projectId}
///       location: asia-south1
///       hostProjectRegistrationId: ${hostProject.projectId}
///       gcpProject: projects/${hostProject.projectId}
///     options:
///       dependsOn:
///         - ${apihubService}
///   runtimeProject:
///     type: gcp:organizations:Project
///     name: runtime_project
///     properties:
///       name: r-ah-proj
///       projectId: r-ah-proj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable API hub API on runtime project
///   apihubServiceRuntime:
///     type: gcp:projects:Service
///     name: apihub_service_runtime
///     properties:
///       project: ${runtimeProject.projectId}
///       service: apihub.googleapis.com
///     options:
///       dependsOn:
///         - ${wait60Seconds}
///   apihubRuntimeProjectAttachment:
///     type: gcp:apihub:RuntimeProjectAttachment
///     name: apihub_runtime_project_attachment
///     properties:
///       project: ${hostProject.projectId}
///       location: asia-south1
///       runtimeProjectAttachmentId: ${runtimeProject.projectId}
///       runtimeProject: projects/${runtimeProject.projectId}
///     options:
///       dependsOn:
///         - ${hostProjectReg}
///         - ${apihubServiceRuntime}
/// ```
///
///
/// ## Import
///
/// RuntimeProjectAttachment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/runtimeProjectAttachments/{{runtime_project_attachment_id}}`
/// * `{{project}}/{{location}}/{{runtime_project_attachment_id}}`
/// * `{{location}}/{{runtime_project_attachment_id}}`
///
///
/// When using the `pulumi import` command, RuntimeProjectAttachment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/runtimeProjectAttachment:RuntimeProjectAttachment default projects/{{project}}/locations/{{location}}/runtimeProjectAttachments/{{runtime_project_attachment_id}}
/// $ pulumi import gcp:apihub/runtimeProjectAttachment:RuntimeProjectAttachment default {{project}}/{{location}}/{{runtime_project_attachment_id}}
/// $ pulumi import gcp:apihub/runtimeProjectAttachment:RuntimeProjectAttachment default {{location}}/{{runtime_project_attachment_id}}
/// ```
class RuntimeProjectAttachment extends pulumi.CustomResource {
  /// Output only. Create time.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of a runtime project attachment.
  /// Format: "projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment_id}"
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  late final pulumi.Output<String> runtimeProject;
  /// The ID to use for the Runtime Project Attachment, which will become the
  /// final component of the Runtime Project Attachment's name. The ID must be the same
  /// as the project ID of the Google cloud project specified in the
  /// runtime_project_attachment.runtime_project field.
  late final pulumi.Output<String> runtimeProjectAttachmentId;

  /// Creates a new [RuntimeProjectAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuntimeProjectAttachment]. {@macro pulumi_apihub_runtime_project_attachment_runtime_project_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuntimeProjectAttachment(
    String name, {
    RuntimeProjectAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/runtimeProjectAttachment:RuntimeProjectAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runtimeProject = registerOutput<String>('runtimeProject');
    runtimeProjectAttachmentId = registerOutput<String>('runtimeProjectAttachmentId');
  }

  /// Gets an existing [RuntimeProjectAttachment] resource's state with the given [name] and [id].
  static RuntimeProjectAttachment get(
    String name,
    pulumi.Input<String> id, {
    RuntimeProjectAttachmentState? state,
  }) {
    return RuntimeProjectAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RuntimeProjectAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/runtimeProjectAttachment:RuntimeProjectAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    runtimeProject = registerOutput<String>('runtimeProject');
    runtimeProjectAttachmentId = registerOutput<String>('runtimeProjectAttachmentId');
  }
}

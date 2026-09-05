import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_autokey_config_args.dart';
import 'project_autokey_config_state.dart';

/// `ProjectAutokeyConfig` is a singleton resource used to configure the auto-provisioning
/// flow of CryptoKeys for CMEK.
///
/// &gt; **Note:** ProjectAutokeyConfigs cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed ProjectAutokeyConfigs will remove it from state but
/// *will not delete the resource from the project.*
///
///
/// To get more information about ProjectAutokeyConfig, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/AutokeyConfig)
/// * How-to Guides
/// * [Cloud KMS with Autokey](https://cloud.google.com/kms/docs/kms-with-autokey)
///
/// ## Example Usage
///
/// ### Kms Autokey Config Project
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Create the resource project
/// const resourceProject = new gcp.organizations.Project("resource_project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable the Cloud KMS API
/// const kmsApiService = new gcp.projects.Service("kms_api_service", {
///     service: "cloudkms.googleapis.com",
///     project: resourceProject.projectId,
///     disableDependentServices: true,
/// }, {
///     dependsOn: [resourceProject],
/// });
/// // Wait delay after enabling APIs
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [kmsApiService],
/// });
/// // Create KMS Service Agent
/// const kmsServiceAgent = new gcp.projects.ServiceIdentity("kms_service_agent", {
///     service: "cloudkms.googleapis.com",
///     project: resourceProject.number,
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// // Wait delay after creating service agent
/// const waitServiceAgent = new time.Sleep("wait_service_agent", {createDuration: "10s"}, {
///     dependsOn: [kmsServiceAgent],
/// });
/// // Grant the KMS Service Agent the Cloud KMS Admin role
/// const autokeyProjectAdmin = new gcp.projects.IAMMember("autokey_project_admin", {
///     project: resourceProject.projectId,
///     role: "roles/cloudkms.admin",
///     member: pulumi.interpolate`serviceAccount:service-${resourceProject.number}@gcp-sa-cloudkms.iam.gserviceaccount.com`,
/// }, {
///     dependsOn: [waitServiceAgent],
/// });
/// // Wait delay after granting IAM permissions
/// const waitSrvAccPermissions = new time.Sleep("wait_srv_acc_permissions", {createDuration: "10s"}, {
///     dependsOn: [autokeyProjectAdmin],
/// });
/// const example_autokeyconfig_project = new gcp.kms.ProjectAutokeyConfig("example-autokeyconfig-project", {
///     project: resourceProject.number,
///     keyProjectResolutionMode: "RESOURCE_PROJECT",
/// }, {
///     dependsOn: [waitSrvAccPermissions],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # Create the resource project
/// resource_project = gcp.organizations.Project("resource_project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable the Cloud KMS API
/// kms_api_service = gcp.projects.Service("kms_api_service",
///     service="cloudkms.googleapis.com",
///     project=resource_project.project_id,
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[resource_project]))
/// # Wait delay after enabling APIs
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_api_service]))
/// # Create KMS Service Agent
/// kms_service_agent = gcp.projects.ServiceIdentity("kms_service_agent",
///     service="cloudkms.googleapis.com",
///     project=resource_project.number,
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// # Wait delay after creating service agent
/// wait_service_agent = time.Sleep("wait_service_agent", create_duration="10s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_service_agent]))
/// # Grant the KMS Service Agent the Cloud KMS Admin role
/// autokey_project_admin = gcp.projects.IAMMember("autokey_project_admin",
///     project=resource_project.project_id,
///     role="roles/cloudkms.admin",
///     member=resource_project.number.apply(lambda number: f"serviceAccount:service-{number}@gcp-sa-cloudkms.iam.gserviceaccount.com"),
///     opts = pulumi.ResourceOptions(depends_on=[wait_service_agent]))
/// # Wait delay after granting IAM permissions
/// wait_srv_acc_permissions = time.Sleep("wait_srv_acc_permissions", create_duration="10s",
/// opts = pulumi.ResourceOptions(depends_on=[autokey_project_admin]))
/// example_autokeyconfig_project = gcp.kms.ProjectAutokeyConfig("example-autokeyconfig-project",
///     project=resource_project.number,
///     key_project_resolution_mode="RESOURCE_PROJECT",
///     opts = pulumi.ResourceOptions(depends_on=[wait_srv_acc_permissions]))
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
///     // Create the resource project
///     var resourceProject = new Gcp.Organizations.Project("resource_project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable the Cloud KMS API
///     var kmsApiService = new Gcp.Projects.Service("kms_api_service", new()
///     {
///         ServiceName = "cloudkms.googleapis.com",
///         Project = resourceProject.ProjectId,
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             resourceProject,
///         },
///     });
///
///     // Wait delay after enabling APIs
///     var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsApiService,
///         },
///     });
///
///     // Create KMS Service Agent
///     var kmsServiceAgent = new Gcp.Projects.ServiceIdentity("kms_service_agent", new()
///     {
///         Service = "cloudkms.googleapis.com",
///         Project = resourceProject.Number,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
///     // Wait delay after creating service agent
///     var waitServiceAgent = new Time.Sleep("wait_service_agent", new()
///     {
///         CreateDuration = "10s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsServiceAgent,
///         },
///     });
///
///     // Grant the KMS Service Agent the Cloud KMS Admin role
///     var autokeyProjectAdmin = new Gcp.Projects.IAMMember("autokey_project_admin", new()
///     {
///         Project = resourceProject.ProjectId,
///         Role = "roles/cloudkms.admin",
///         Member = resourceProject.Number.Apply(number => $"serviceAccount:service-{number}@gcp-sa-cloudkms.iam.gserviceaccount.com"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitServiceAgent,
///         },
///     });
///
///     // Wait delay after granting IAM permissions
///     var waitSrvAccPermissions = new Time.Sleep("wait_srv_acc_permissions", new()
///     {
///         CreateDuration = "10s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             autokeyProjectAdmin,
///         },
///     });
///
///     var example_autokeyconfig_project = new Gcp.Kms.ProjectAutokeyConfig("example-autokeyconfig-project", new()
///     {
///         Project = resourceProject.Number,
///         KeyProjectResolutionMode = "RESOURCE_PROJECT",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitSrvAccPermissions,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create the resource project
/// 		resourceProject, err := organizations.NewProject(ctx, "resource_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable the Cloud KMS API
/// 		kmsApiService, err := projects.NewService(ctx, "kms_api_service", &projects.ServiceArgs{
/// 			Service:                  pulumi.String("cloudkms.googleapis.com"),
/// 			Project:                  resourceProject.ProjectId,
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			resourceProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after enabling APIs
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsApiService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create KMS Service Agent
/// 		kmsServiceAgent, err := projects.NewServiceIdentity(ctx, "kms_service_agent", &projects.ServiceIdentityArgs{
/// 			Service: pulumi.String("cloudkms.googleapis.com"),
/// 			Project: resourceProject.Number,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after creating service agent
/// 		waitServiceAgent, err := time.NewSleep(ctx, "wait_service_agent", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("10s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsServiceAgent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Grant the KMS Service Agent the Cloud KMS Admin role
/// 		autokeyProjectAdmin, err := projects.NewIAMMember(ctx, "autokey_project_admin", &projects.IAMMemberArgs{
/// 			Project: resourceProject.ProjectId,
/// 			Role:    pulumi.String("roles/cloudkms.admin"),
/// 			Member: resourceProject.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:service-%v@gcp-sa-cloudkms.iam.gserviceaccount.com", number), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitServiceAgent,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after granting IAM permissions
/// 		waitSrvAccPermissions, err := time.NewSleep(ctx, "wait_srv_acc_permissions", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("10s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			autokeyProjectAdmin,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewProjectAutokeyConfig(ctx, "example-autokeyconfig-project", &kms.ProjectAutokeyConfigArgs{
/// 			Project:                  resourceProject.Number,
/// 			KeyProjectResolutionMode: pulumi.String("RESOURCE_PROJECT"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitSrvAccPermissions,
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
/// # Create the resource project
/// resource "gcp_organizations_project" "resource_project" {
///   project_id      = "my-project"
///   name            = "my-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Enable the Cloud KMS API
/// resource "gcp_projects_service" "kms_api_service" {
///   depends_on                 = [gcp_organizations_project.resource_project]
///   service                    = "cloudkms.googleapis.com"
///   project                    = gcp_organizations_project.resource_project.project_id
///   disable_dependent_services = true
/// }
/// # Wait delay after enabling APIs
/// resource "time_sleep" "wait_enable_service_api" {
///   depends_on      = [gcp_projects_service.kms_api_service]
///   create_duration = "30s"
/// }
/// # Create KMS Service Agent
/// resource "gcp_projects_serviceidentity" "kms_service_agent" {
///   depends_on = [time_sleep.wait_enable_service_api]
///   service    = "cloudkms.googleapis.com"
///   project    = gcp_organizations_project.resource_project.number
/// }
/// # Wait delay after creating service agent
/// resource "time_sleep" "wait_service_agent" {
///   depends_on      = [gcp_projects_serviceidentity.kms_service_agent]
///   create_duration = "10s"
/// }
/// # Grant the KMS Service Agent the Cloud KMS Admin role
/// resource "gcp_projects_iammember" "autokey_project_admin" {
///   depends_on = [time_sleep.wait_service_agent]
///   project    = gcp_organizations_project.resource_project.project_id
///   role       = "roles/cloudkms.admin"
///   member     ="serviceAccount:service-${gcp_organizations_project.resource_project.number}@gcp-sa-cloudkms.iam.gserviceaccount.com"
/// }
/// # Wait delay after granting IAM permissions
/// resource "time_sleep" "wait_srv_acc_permissions" {
///   depends_on      = [gcp_projects_iammember.autokey_project_admin]
///   create_duration = "10s"
/// }
/// resource "gcp_kms_projectautokeyconfig" "example-autokeyconfig-project" {
///   depends_on                  = [time_sleep.wait_srv_acc_permissions]
///   project                     = gcp_organizations_project.resource_project.number
///   key_project_resolution_mode = "RESOURCE_PROJECT"
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
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.kms.ProjectAutokeyConfig;
/// import com.pulumi.gcp.kms.ProjectAutokeyConfigArgs;
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
///         // Create the resource project
///         var resourceProject = new Project("resourceProject", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable the Cloud KMS API
///         var kmsApiService = new Service("kmsApiService", ServiceArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(resourceProject.projectId())
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(resourceProject)
///                 .build());
///
///         // Wait delay after enabling APIs
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsApiService)
///                 .build());
///
///         // Create KMS Service Agent
///         var kmsServiceAgent = new ServiceIdentity("kmsServiceAgent", ServiceIdentityArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(resourceProject.number())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
///                 .build());
///
///         // Wait delay after creating service agent
///         var waitServiceAgent = new Sleep("waitServiceAgent", SleepArgs.builder()
///             .createDuration("10s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsServiceAgent)
///                 .build());
///
///         // Grant the KMS Service Agent the Cloud KMS Admin role
///         var autokeyProjectAdmin = new IAMMember("autokeyProjectAdmin", IAMMemberArgs.builder()
///             .project(resourceProject.projectId())
///             .role("roles/cloudkms.admin")
///             .member(resourceProject.number().applyValue(_number -> String.format("serviceAccount:service-%s@gcp-sa-cloudkms.iam.gserviceaccount.com", _number)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitServiceAgent)
///                 .build());
///
///         // Wait delay after granting IAM permissions
///         var waitSrvAccPermissions = new Sleep("waitSrvAccPermissions", SleepArgs.builder()
///             .createDuration("10s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(autokeyProjectAdmin)
///                 .build());
///
///         var example_autokeyconfig_project = new ProjectAutokeyConfig("example-autokeyconfig-project", ProjectAutokeyConfigArgs.builder()
///             .project(resourceProject.number())
///             .keyProjectResolutionMode("RESOURCE_PROJECT")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitSrvAccPermissions)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create the resource project
///   resourceProject:
///     type: gcp:organizations:Project
///     name: resource_project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable the Cloud KMS API
///   kmsApiService:
///     type: gcp:projects:Service
///     name: kms_api_service
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${resourceProject.projectId}
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${resourceProject}
///   # Wait delay after enabling APIs
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${kmsApiService}
///   # Create KMS Service Agent
///   kmsServiceAgent:
///     type: gcp:projects:ServiceIdentity
///     name: kms_service_agent
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${resourceProject.number}
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
///   # Wait delay after creating service agent
///   waitServiceAgent:
///     type: time:Sleep
///     name: wait_service_agent
///     properties:
///       createDuration: 10s
///     options:
///       dependsOn:
///         - ${kmsServiceAgent}
///   # Grant the KMS Service Agent the Cloud KMS Admin role
///   autokeyProjectAdmin:
///     type: gcp:projects:IAMMember
///     name: autokey_project_admin
///     properties:
///       project: ${resourceProject.projectId}
///       role: roles/cloudkms.admin
///       member: serviceAccount:service-${resourceProject.number}@gcp-sa-cloudkms.iam.gserviceaccount.com
///     options:
///       dependsOn:
///         - ${waitServiceAgent}
///   # Wait delay after granting IAM permissions
///   waitSrvAccPermissions:
///     type: time:Sleep
///     name: wait_srv_acc_permissions
///     properties:
///       createDuration: 10s
///     options:
///       dependsOn:
///         - ${autokeyProjectAdmin}
///   example-autokeyconfig-project:
///     type: gcp:kms:ProjectAutokeyConfig
///     properties:
///       project: ${resourceProject.number}
///       keyProjectResolutionMode: RESOURCE_PROJECT
///     options:
///       dependsOn:
///         - ${waitSrvAccPermissions}
/// ```
///
///
/// ## Import
///
/// ProjectAutokeyConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/autokeyConfig`
/// * `{{project}}`
///
///
/// When using the `pulumi import` command, ProjectAutokeyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/projectAutokeyConfig:ProjectAutokeyConfig default projects/{{project}}/autokeyConfig
/// $ pulumi import gcp:kms/projectAutokeyConfig:ProjectAutokeyConfig default {{project}}
/// ```
class ProjectAutokeyConfig extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The etag of the AutokeyConfig for optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// How Autokey determines which project to use when provisioning CMEK keys.
  /// Possible values are: `RESOURCE_PROJECT`, `DISABLED`.
  late final pulumi.Output<String?> keyProjectResolutionMode;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectAutokeyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectAutokeyConfig]. {@macro pulumi_kms_project_autokey_config_project_autokey_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectAutokeyConfig(
    String name, {
    ProjectAutokeyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/projectAutokeyConfig:ProjectAutokeyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    keyProjectResolutionMode = registerOutput<String?>('keyProjectResolutionMode');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectAutokeyConfig] resource's state with the given [name] and [id].
  static ProjectAutokeyConfig get(
    String name,
    pulumi.Input<String> id, {
    ProjectAutokeyConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectAutokeyConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectAutokeyConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/projectAutokeyConfig:ProjectAutokeyConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    keyProjectResolutionMode = registerOutput<String?>('keyProjectResolutionMode');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [ProjectAutokeyConfig] resource.
  ProjectAutokeyConfig.reference(String urn)
    : super(
        'gcp:kms/projectAutokeyConfig:ProjectAutokeyConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    etag = registerOutput<String>('etag');
    keyProjectResolutionMode = registerOutput<String?>('keyProjectResolutionMode');
    project = registerOutput<String>('project');
  }
}

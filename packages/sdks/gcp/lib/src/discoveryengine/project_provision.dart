import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_provision_args.dart';
import 'project_provision_saas_params.dart';
import 'project_provision_state.dart';

/// Provisions a Google Cloud project for Discovery Engine and prepares and initializes related systems.
///
///
/// To get more information about ProjectProvision, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rest/v1/projects/provision)
///
/// &gt; **Warning:** This resource is create-only and cannot be read, updated, or deleted from the API.
/// Destroying this resource only removes it from Terraform state without unprovisioning the Google Cloud project.
///
///
/// ## Example Usage
///
/// ### Discoveryengine Project Provision Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "example",
///     name: "example",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const discoveryengine = new gcp.projects.Service("discoveryengine", {
///     project: project.projectId,
///     service: "discoveryengine.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [discoveryengine],
/// });
/// const _default = new gcp.discoveryengine.ProjectProvision("default", {
///     project: project.projectId,
///     acceptDataUseTerms: true,
///     dataUseTermsVersion: "2022-11-23",
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="example",
///     name="example",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// discoveryengine = gcp.projects.Service("discoveryengine",
///     project=project.project_id,
///     service="discoveryengine.googleapis.com",
///     disable_on_destroy=False)
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[discoveryengine]))
/// default = gcp.discoveryengine.ProjectProvision("default",
///     project=project.project_id,
///     accept_data_use_terms=True,
///     data_use_terms_version="2022-11-23",
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
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
///         ProjectId = "example",
///         Name = "example",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var discoveryengine = new Gcp.Projects.Service("discoveryengine", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "discoveryengine.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             discoveryengine,
///         },
///     });
///
///     var @default = new Gcp.DiscoveryEngine.ProjectProvision("default", new()
///     {
///         Project = project.ProjectId,
///         AcceptDataUseTerms = true,
///         DataUseTermsVersion = "2022-11-23",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("example"),
/// 			Name:           pulumi.String("example"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		discoveryengine2, err := projects.NewService(ctx, "discoveryengine", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("discoveryengine.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			discoveryengine2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewProjectProvision(ctx, "default", &discoveryengine.ProjectProvisionArgs{
/// 			Project:             project.ProjectId,
/// 			AcceptDataUseTerms:  pulumi.Bool(true),
/// 			DataUseTermsVersion: pulumi.String("2022-11-23"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
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
///   project_id      = "example"
///   name            = "example"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "discoveryengine" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project            = gcp_organizations_project.project.project_id
///   service            = "discoveryengine.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "time_sleep" "wait_enable_service_api" {
///   depends_on = [gcp_projects_service.discoveryengine]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "30s"
/// }
/// resource "gcp_discoveryengine_project_provision" "default" {
///   depends_on = [time_sleep.wait_enable_service_api]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project                = gcp_organizations_project.project.project_id
///   accept_data_use_terms  = true
///   data_use_terms_version = "2022-11-23"
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
/// import com.pulumi.gcp.discoveryengine.ProjectProvision;
/// import com.pulumi.gcp.discoveryengine.ProjectProvisionArgs;
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
///             .projectId("example")
///             .name("example")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var discoveryengine = new Service("discoveryengine", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("discoveryengine.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(discoveryengine)
///                 .build());
///
///         var default_ = new ProjectProvision("default", ProjectProvisionArgs.builder()
///             .project(project.projectId())
///             .acceptDataUseTerms(true)
///             .dataUseTermsVersion("2022-11-23")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
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
///       projectId: example
///       name: example
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   discoveryengine:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: discoveryengine.googleapis.com
///       disableOnDestroy: false
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${discoveryengine}
///   default:
///     type: gcp:discoveryengine:ProjectProvision
///     properties:
///       project: ${project.projectId}
///       acceptDataUseTerms: true
///       dataUseTermsVersion: 2022-11-23
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
/// ```
///
///
/// ### Discoveryengine Project Provision Saas Params
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "saas-prj",
///     name: "saas-prj",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const discoveryengine = new gcp.projects.Service("discoveryengine", {
///     project: project.projectId,
///     service: "discoveryengine.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [discoveryengine],
/// });
/// const saas = new gcp.discoveryengine.ProjectProvision("saas", {
///     project: project.projectId,
///     location: "global",
///     saasParams: {
///         isBiz: true,
///     },
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="saas-prj",
///     name="saas-prj",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// discoveryengine = gcp.projects.Service("discoveryengine",
///     project=project.project_id,
///     service="discoveryengine.googleapis.com",
///     disable_on_destroy=False)
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[discoveryengine]))
/// saas = gcp.discoveryengine.ProjectProvision("saas",
///     project=project.project_id,
///     location="global",
///     saas_params={
///         "is_biz": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
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
///         ProjectId = "saas-prj",
///         Name = "saas-prj",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var discoveryengine = new Gcp.Projects.Service("discoveryengine", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "discoveryengine.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var waitEnableServiceApi = new Time.Sleep("wait_enable_service_api", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             discoveryengine,
///         },
///     });
///
///     var saas = new Gcp.DiscoveryEngine.ProjectProvision("saas", new()
///     {
///         Project = project.ProjectId,
///         Location = "global",
///         SaasParams = new Gcp.DiscoveryEngine.Inputs.ProjectProvisionSaasParamsArgs
///         {
///             IsBiz = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/discoveryengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("saas-prj"),
/// 			Name:           pulumi.String("saas-prj"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		discoveryengine2, err := projects.NewService(ctx, "discoveryengine", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("discoveryengine.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			discoveryengine2,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = discoveryengine.NewProjectProvision(ctx, "saas", &discoveryengine.ProjectProvisionArgs{
/// 			Project:  project.ProjectId,
/// 			Location: pulumi.String("global"),
/// 			SaasParams: &discoveryengine.ProjectProvisionSaasParamsArgs{
/// 				IsBiz: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
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
///   project_id      = "saas-prj"
///   name            = "saas-prj"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "discoveryengine" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   project            = gcp_organizations_project.project.project_id
///   service            = "discoveryengine.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "time_sleep" "wait_enable_service_api" {
///   depends_on = [gcp_projects_service.discoveryengine]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "30s"
/// }
/// resource "gcp_discoveryengine_project_provision" "saas" {
///   depends_on = [time_sleep.wait_enable_service_api]
///   lifecycle {
///     create_before_destroy = true
///   }
///   project  = gcp_organizations_project.project.project_id
///   location = "global"
///   saas_params = {
///     is_biz = true
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
/// import com.pulumi.gcp.discoveryengine.ProjectProvision;
/// import com.pulumi.gcp.discoveryengine.ProjectProvisionArgs;
/// import com.pulumi.gcp.discoveryengine.inputs.ProjectProvisionSaasParamsArgs;
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
///             .projectId("saas-prj")
///             .name("saas-prj")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var discoveryengine = new Service("discoveryengine", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("discoveryengine.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(discoveryengine)
///                 .build());
///
///         var saas = new ProjectProvision("saas", ProjectProvisionArgs.builder()
///             .project(project.projectId())
///             .location("global")
///             .saasParams(ProjectProvisionSaasParamsArgs.builder()
///                 .isBiz(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
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
///       projectId: saas-prj
///       name: saas-prj
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   discoveryengine:
///     type: gcp:projects:Service
///     properties:
///       project: ${project.projectId}
///       service: discoveryengine.googleapis.com
///       disableOnDestroy: false
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${discoveryengine}
///   saas:
///     type: gcp:discoveryengine:ProjectProvision
///     properties:
///       project: ${project.projectId}
///       location: global
///       saasParams:
///         isBiz: true
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ProjectProvision extends pulumi.CustomResource {
  /// Set to `true` to specify that the caller has read and consents to the
  /// [Terms for data use](https://cloud.google.com/retail/data-use-terms).
  late final pulumi.Output<bool?> acceptDataUseTerms;
  /// The version of the [Terms for data use](https://cloud.google.com/retail/data-use-terms)
  /// that the caller has read and consents to. An acceptable version is `2022-11-23`,
  /// and this may change over time.
  late final pulumi.Output<String?> dataUseTermsVersion;
  /// The geographic location in which to provision the project, such as
  /// `global`, `us`, or `eu`.
  late final pulumi.Output<String?> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The Gemini Enterprise experience that the project is provisioned for.
  /// `PROVISION_INTENT_SOBI` provisions the project for the new Gemini Enterprise
  /// experience, and `PROVISION_INTENT_LEGACY` provisions it for the classic
  /// Gemini Enterprise experience. If unset, the API chooses the experience.
  /// Changing this field forces a new resource, which calls the provisioning API
  /// again with the new value. Provisioning doesn't remove an experience that the
  /// project was already provisioned for, and the API may reject provisioning a
  /// project that uses the classic experience for the new experience.
  /// Possible values are: `PROVISION_INTENT_SOBI`, `PROVISION_INTENT_LEGACY`.
  late final pulumi.Output<String?> provisionIntent;
  /// Parameters for Gemini Enterprise (Agentspace) provisioning.
  /// Structure is documented below.
  late final pulumi.Output<ProjectProvisionSaasParams?> saasParams;

  /// Creates a new [ProjectProvision].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectProvision]. {@macro pulumi_discoveryengine_project_provision_project_provision_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectProvision(
    String name, {
    ProjectProvisionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/projectProvision:ProjectProvision',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    acceptDataUseTerms = registerOutput<bool?>('acceptDataUseTerms');
    dataUseTermsVersion = registerOutput<String?>('dataUseTermsVersion');
    location = registerOutput<String?>('location');
    project = registerOutput<String>('project');
    provisionIntent = registerOutput<String?>('provisionIntent');
    saasParams = registerOutput<ProjectProvisionSaasParams?>('saasParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectProvisionSaasParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ProjectProvision] resource's state with the given [name] and [id].
  static ProjectProvision get(
    String name,
    pulumi.Input<String> id, {
    ProjectProvisionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectProvision._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectProvision._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/projectProvision:ProjectProvision',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptDataUseTerms = registerOutput<bool?>('acceptDataUseTerms');
    dataUseTermsVersion = registerOutput<String?>('dataUseTermsVersion');
    location = registerOutput<String?>('location');
    project = registerOutput<String>('project');
    provisionIntent = registerOutput<String?>('provisionIntent');
    saasParams = registerOutput<ProjectProvisionSaasParams?>('saasParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectProvisionSaasParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ProjectProvision] resource.
  ProjectProvision.reference(String urn)
    : super(
        'gcp:discoveryengine/projectProvision:ProjectProvision',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    acceptDataUseTerms = registerOutput<bool?>('acceptDataUseTerms');
    dataUseTermsVersion = registerOutput<String?>('dataUseTermsVersion');
    location = registerOutput<String?>('location');
    project = registerOutput<String>('project');
    provisionIntent = registerOutput<String?>('provisionIntent');
    saasParams = registerOutput<ProjectProvisionSaasParams?>('saasParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectProvisionSaasParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

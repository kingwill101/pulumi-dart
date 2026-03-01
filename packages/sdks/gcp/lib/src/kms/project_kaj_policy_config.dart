import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_kaj_policy_config_args.dart';
import 'project_kaj_policy_config_default_key_access_justification_policy.dart';
import 'project_kaj_policy_config_state.dart';

/// ## Example Usage
///
/// ### Kms Project Kaj Policy Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Create a project
/// const kmsProject = new gcp.organizations.Project("kms_project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// // Enable the Cloud KMS API.
/// const kmsApiService = new gcp.projects.Service("kms_api_service", {
///     service: "cloudkms.googleapis.com",
///     project: kmsProject.projectId,
///     disableDependentServices: true,
/// }, {
///     dependsOn: [kmsProject],
/// });
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [kmsApiService],
/// });
/// const example = new gcp.kms.ProjectKajPolicyConfig("example", {
///     project: kmsProject.projectId,
///     defaultKeyAccessJustificationPolicy: {
///         allowedAccessReasons: [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
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
/// # Create a project
/// kms_project = gcp.organizations.Project("kms_project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// # Enable the Cloud KMS API.
/// kms_api_service = gcp.projects.Service("kms_api_service",
///     service="cloudkms.googleapis.com",
///     project=kms_project.project_id,
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[kms_project]))
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_api_service]))
/// example = gcp.kms.ProjectKajPolicyConfig("example",
///     project=kms_project.project_id,
///     default_key_access_justification_policy={
///         "allowed_access_reasons": [
///             "CUSTOMER_INITIATED_ACCESS",
///             "GOOGLE_INITIATED_SYSTEM_OPERATION",
///         ],
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
///     // Create a project
///     var kmsProject = new Gcp.Organizations.Project("kms_project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     // Enable the Cloud KMS API.
///     var kmsApiService = new Gcp.Projects.Service("kms_api_service", new()
///     {
///         ServiceName = "cloudkms.googleapis.com",
///         Project = kmsProject.ProjectId,
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kmsProject,
///         },
///     });
///
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
///     var example = new Gcp.Kms.ProjectKajPolicyConfig("example", new()
///     {
///         Project = kmsProject.ProjectId,
///         DefaultKeyAccessJustificationPolicy = new Gcp.Kms.Inputs.ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs
///         {
///             AllowedAccessReasons = new[]
///             {
///                 "CUSTOMER_INITIATED_ACCESS",
///                 "GOOGLE_INITIATED_SYSTEM_OPERATION",
///             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a project
/// 		kmsProject, err := organizations.NewProject(ctx, "kms_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable the Cloud KMS API.
/// 		kmsApiService, err := projects.NewService(ctx, "kms_api_service", &projects.ServiceArgs{
/// 			Service:                  pulumi.String("cloudkms.googleapis.com"),
/// 			Project:                  kmsProject.ProjectId,
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsProject,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitEnableServiceApi, err := time.NewSleep(ctx, "wait_enable_service_api", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kmsApiService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewProjectKajPolicyConfig(ctx, "example", &kms.ProjectKajPolicyConfigArgs{
/// 			Project: kmsProject.ProjectId,
/// 			DefaultKeyAccessJustificationPolicy: &kms.ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs{
/// 				AllowedAccessReasons: pulumi.StringArray{
/// 					pulumi.String("CUSTOMER_INITIATED_ACCESS"),
/// 					pulumi.String("GOOGLE_INITIATED_SYSTEM_OPERATION"),
/// 				},
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
/// import com.pulumi.gcp.kms.ProjectKajPolicyConfig;
/// import com.pulumi.gcp.kms.ProjectKajPolicyConfigArgs;
/// import com.pulumi.gcp.kms.inputs.ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs;
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
///         // Create a project
///         var kmsProject = new Project("kmsProject", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         // Enable the Cloud KMS API.
///         var kmsApiService = new Service("kmsApiService", ServiceArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(kmsProject.projectId())
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsProject)
///                 .build());
///
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsApiService)
///                 .build());
///
///         var example = new ProjectKajPolicyConfig("example", ProjectKajPolicyConfigArgs.builder()
///             .project(kmsProject.projectId())
///             .defaultKeyAccessJustificationPolicy(ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs.builder()
///                 .allowedAccessReasons(
///                     "CUSTOMER_INITIATED_ACCESS",
///                     "GOOGLE_INITIATED_SYSTEM_OPERATION")
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
///   # Create a project
///   kmsProject:
///     type: gcp:organizations:Project
///     name: kms_project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   # Enable the Cloud KMS API.
///   kmsApiService:
///     type: gcp:projects:Service
///     name: kms_api_service
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${kmsProject.projectId}
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${kmsProject}
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${kmsApiService}
///   example:
///     type: gcp:kms:ProjectKajPolicyConfig
///     properties:
///       project: ${kmsProject.projectId}
///       defaultKeyAccessJustificationPolicy:
///         allowedAccessReasons:
///           - CUSTOMER_INITIATED_ACCESS
///           - GOOGLE_INITIATED_SYSTEM_OPERATION
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
/// ```
///
///
/// ## Import
///
/// ProjectKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/kajPolicyConfig`
///
/// * `{{project}}`
///
/// When using the `pulumi import` command, ProjectKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig default projects/{{project}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig default {{project}}
/// ```
class ProjectKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this project. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi.Output<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?> defaultKeyAccessJustificationPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [ProjectKajPolicyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectKajPolicyConfig]. {@macro pulumi_kms_project_kaj_policy_config_project_kaj_policy_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectKajPolicyConfig(
    String name, {
    ProjectKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy');
    this.project = registerOutput<String>('project');
  }

  /// Gets an existing [ProjectKajPolicyConfig] resource's state with the given [name] and [id].
  static ProjectKajPolicyConfig get(
    String name,
    pulumi.Input<String> id, {
    ProjectKajPolicyConfigState? state,
  }) {
    return ProjectKajPolicyConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectKajPolicyConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/projectKajPolicyConfig:ProjectKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<ProjectKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy');
    this.project = registerOutput<String>('project');
  }
}

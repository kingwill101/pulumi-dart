import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_settings_args.dart';
import 'project_settings_state.dart';

/// Manages Cloud Observability settings for a project.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
///
/// ## Example Usage
///
/// ### Observability Project Settings Basic Global
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "tf-test_42057",
///     name: "tf-test_84735",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const observabilityApi = new gcp.projects.Service("observability_api", {
///     project: project.projectId,
///     service: "observability.googleapis.com",
///     disableOnDestroy: false,
/// });
/// // Wait for the project to be created and recognized by the Observability API
/// const waitForSettingsPropagation = new time.Sleep("wait_for_settings_propagation", {createDuration: "90s"}, {
///     dependsOn: [observabilityApi],
/// });
/// const primaryGlobal = new gcp.observability.ProjectSettings("primary_global", {
///     location: "global",
///     project: project.projectId,
///     defaultStorageLocation: "eu",
/// }, {
///     dependsOn: [waitForSettingsPropagation],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="tf-test_42057",
///     name="tf-test_84735",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// observability_api = gcp.projects.Service("observability_api",
///     project=project.project_id,
///     service="observability.googleapis.com",
///     disable_on_destroy=False)
/// # Wait for the project to be created and recognized by the Observability API
/// wait_for_settings_propagation = time.Sleep("wait_for_settings_propagation", create_duration="90s",
/// opts = pulumi.ResourceOptions(depends_on=[observability_api]))
/// primary_global = gcp.observability.ProjectSettings("primary_global",
///     location="global",
///     project=project.project_id,
///     default_storage_location="eu",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_settings_propagation]))
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
///         ProjectId = "tf-test_42057",
///         Name = "tf-test_84735",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var observabilityApi = new Gcp.Projects.Service("observability_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "observability.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     // Wait for the project to be created and recognized by the Observability API
///     var waitForSettingsPropagation = new Time.Sleep("wait_for_settings_propagation", new()
///     {
///         CreateDuration = "90s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             observabilityApi,
///         },
///     });
///
///     var primaryGlobal = new Gcp.Observability.ProjectSettings("primary_global", new()
///     {
///         Location = "global",
///         Project = project.ProjectId,
///         DefaultStorageLocation = "eu",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForSettingsPropagation,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_42057"),
/// 			Name:           pulumi.String("tf-test_84735"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		observabilityApi, err := projects.NewService(ctx, "observability_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("observability.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait for the project to be created and recognized by the Observability API
/// 		waitForSettingsPropagation, err := time.NewSleep(ctx, "wait_for_settings_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("90s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			observabilityApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observability.NewProjectSettings(ctx, "primary_global", &observability.ProjectSettingsArgs{
/// 			Location:               pulumi.String("global"),
/// 			Project:                project.ProjectId,
/// 			DefaultStorageLocation: pulumi.String("eu"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForSettingsPropagation,
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
///   project_id      = "tf-test_42057"
///   name            = "tf-test_84735"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "observability_api" {
///   project            = gcp_organizations_project.project.project_id
///   service            = "observability.googleapis.com"
///   disable_on_destroy = false
/// }
/// # Wait for the project to be created and recognized by the Observability API
/// resource "time_sleep" "wait_for_settings_propagation" {
///   depends_on      = [gcp_projects_service.observability_api]
///   create_duration = "90s"
/// }
/// resource "gcp_observability_projectsettings" "primary_global" {
///   depends_on               = [time_sleep.wait_for_settings_propagation]
///   location                 = "global"
///   project                  = gcp_organizations_project.project.project_id
///   default_storage_location = "eu"
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
/// import com.pulumi.gcp.observability.ProjectSettings;
/// import com.pulumi.gcp.observability.ProjectSettingsArgs;
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
///             .projectId("tf-test_42057")
///             .name("tf-test_84735")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var observabilityApi = new Service("observabilityApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("observability.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         // Wait for the project to be created and recognized by the Observability API
///         var waitForSettingsPropagation = new Sleep("waitForSettingsPropagation", SleepArgs.builder()
///             .createDuration("90s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(observabilityApi)
///                 .build());
///
///         var primaryGlobal = new ProjectSettings("primaryGlobal", ProjectSettingsArgs.builder()
///             .location("global")
///             .project(project.projectId())
///             .defaultStorageLocation("eu")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForSettingsPropagation)
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
///       projectId: tf-test_42057
///       name: tf-test_84735
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   observabilityApi:
///     type: gcp:projects:Service
///     name: observability_api
///     properties:
///       project: ${project.projectId}
///       service: observability.googleapis.com
///       disableOnDestroy: false
///   # Wait for the project to be created and recognized by the Observability API
///   waitForSettingsPropagation:
///     type: time:Sleep
///     name: wait_for_settings_propagation
///     properties:
///       createDuration: 90s
///     options:
///       dependsOn:
///         - ${observabilityApi}
///   primaryGlobal:
///     type: gcp:observability:ProjectSettings
///     name: primary_global
///     properties:
///       location: global
///       project: ${project.projectId}
///       defaultStorageLocation: eu
///     options:
///       dependsOn:
///         - ${waitForSettingsPropagation}
/// ```
///
///
/// ## Import
///
/// ProjectSettings can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/settings`
/// * `{{project}}/{{location}}`
/// * `{{location}}`
///
///
/// When using the `pulumi import` command, ProjectSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/projectSettings:ProjectSettings default projects/{{project}}/locations/{{location}}/settings
/// $ pulumi import gcp:observability/projectSettings:ProjectSettings default {{project}}/{{location}}
/// $ pulumi import gcp:observability/projectSettings:ProjectSettings default {{location}}
/// ```
class ProjectSettings extends pulumi.CustomResource {
  /// The default storage location for new resources, e.g. buckets. Only valid for global location.
  late final pulumi.Output<String?> defaultStorageLocation;
  /// The default Cloud KMS key to use for new resources. Only valid for regional locations.
  late final pulumi.Output<String?> kmsKeyName;
  /// The location of the settings.
  late final pulumi.Output<String> location;
  /// The resource name of the settings.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The service account used by Cloud Observability for this project.
  late final pulumi.Output<String> serviceAccountId;

  /// Creates a new [ProjectSettings].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectSettings]. {@macro pulumi_observability_project_settings_project_settings_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectSettings(
    String name, {
    ProjectSettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/projectSettings:ProjectSettings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }

  /// Gets an existing [ProjectSettings] resource's state with the given [name] and [id].
  static ProjectSettings get(
    String name,
    pulumi.Input<String> id, {
    ProjectSettingsState? state,
  }) {
    return ProjectSettings._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProjectSettings._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/projectSettings:ProjectSettings',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultStorageLocation = registerOutput<String?>('defaultStorageLocation');
    kmsKeyName = registerOutput<String?>('kmsKeyName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceAccountId = registerOutput<String>('serviceAccountId');
  }
}

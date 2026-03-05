import 'package:pulumi/pulumi.dart' as pulumi;
import 'autokey_config_args.dart';
import 'autokey_config_state.dart';

/// ## Example Usage
///
/// ### Kms Autokey Config All
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// // Create Folder in GCP Organization
/// const autokmsFolder = new gcp.organizations.Folder("autokms_folder", {
///     displayName: "folder-cfg",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// // Create the key project
/// const keyProject = new gcp.organizations.Project("key_project", {
///     projectId: "key-proj",
///     name: "key-proj",
///     folderId: autokmsFolder.folderId,
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// }, {
///     dependsOn: [autokmsFolder],
/// });
/// // Enable the Cloud KMS API
/// const kmsApiService = new gcp.projects.Service("kms_api_service", {
///     service: "cloudkms.googleapis.com",
///     project: keyProject.projectId,
///     disableDependentServices: true,
/// }, {
///     dependsOn: [keyProject],
/// });
/// // Wait delay after enabling APIs
/// const waitEnableServiceApi = new time.Sleep("wait_enable_service_api", {createDuration: "30s"}, {
///     dependsOn: [kmsApiService],
/// });
/// //Create KMS Service Agent
/// const kmsServiceAgent = new gcp.projects.ServiceIdentity("kms_service_agent", {
///     service: "cloudkms.googleapis.com",
///     project: keyProject.number,
/// }, {
///     dependsOn: [waitEnableServiceApi],
/// });
/// // Wait delay after creating service agent.
/// const waitServiceAgent = new time.Sleep("wait_service_agent", {createDuration: "10s"}, {
///     dependsOn: [kmsServiceAgent],
/// });
/// //Grant the KMS Service Agent the Cloud KMS Admin role
/// const autokeyProjectAdmin = new gcp.projects.IAMMember("autokey_project_admin", {
///     project: keyProject.projectId,
///     role: "roles/cloudkms.admin",
///     member: pulumi.interpolate`serviceAccount:service-${keyProject.number}@gcp-sa-cloudkms.iam.gserviceaccount.com`,
/// }, {
///     dependsOn: [waitServiceAgent],
/// });
/// // Wait delay after granting IAM permissions
/// const waitSrvAccPermissions = new time.Sleep("wait_srv_acc_permissions", {createDuration: "10s"}, {
///     dependsOn: [autokeyProjectAdmin],
/// });
/// const example_autokeyconfig = new gcp.kms.AutokeyConfig("example-autokeyconfig", {
///     folder: autokmsFolder.id,
///     keyProject: pulumi.interpolate`projects/${keyProject.projectId}`,
/// }, {
///     dependsOn: [waitSrvAccPermissions],
/// });
/// // Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
/// // because setting the config takes a little to fully propagate.
/// const waitAutokeyPropagation = new time.Sleep("wait_autokey_propagation", {createDuration: "30s"}, {
///     dependsOn: [example_autokeyconfig],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # Create Folder in GCP Organization
/// autokms_folder = gcp.organizations.Folder("autokms_folder",
///     display_name="folder-cfg",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # Create the key project
/// key_project = gcp.organizations.Project("key_project",
///     project_id="key-proj",
///     name="key-proj",
///     folder_id=autokms_folder.folder_id,
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE",
///     opts = pulumi.ResourceOptions(depends_on=[autokms_folder]))
/// # Enable the Cloud KMS API
/// kms_api_service = gcp.projects.Service("kms_api_service",
///     service="cloudkms.googleapis.com",
///     project=key_project.project_id,
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[key_project]))
/// # Wait delay after enabling APIs
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_api_service]))
/// #Create KMS Service Agent
/// kms_service_agent = gcp.projects.ServiceIdentity("kms_service_agent",
///     service="cloudkms.googleapis.com",
///     project=key_project.number,
///     opts = pulumi.ResourceOptions(depends_on=[wait_enable_service_api]))
/// # Wait delay after creating service agent.
/// wait_service_agent = time.Sleep("wait_service_agent", create_duration="10s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_service_agent]))
/// #Grant the KMS Service Agent the Cloud KMS Admin role
/// autokey_project_admin = gcp.projects.IAMMember("autokey_project_admin",
///     project=key_project.project_id,
///     role="roles/cloudkms.admin",
///     member=key_project.number.apply(lambda number: f"serviceAccount:service-{number}@gcp-sa-cloudkms.iam.gserviceaccount.com"),
///     opts = pulumi.ResourceOptions(depends_on=[wait_service_agent]))
/// # Wait delay after granting IAM permissions
/// wait_srv_acc_permissions = time.Sleep("wait_srv_acc_permissions", create_duration="10s",
/// opts = pulumi.ResourceOptions(depends_on=[autokey_project_admin]))
/// example_autokeyconfig = gcp.kms.AutokeyConfig("example-autokeyconfig",
///     folder=autokms_folder.id,
///     key_project=key_project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[wait_srv_acc_permissions]))
/// # Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
/// # because setting the config takes a little to fully propagate.
/// wait_autokey_propagation = time.Sleep("wait_autokey_propagation", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[example_autokeyconfig]))
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
///     // Create Folder in GCP Organization
///     var autokmsFolder = new Gcp.Organizations.Folder("autokms_folder", new()
///     {
///         DisplayName = "folder-cfg",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // Create the key project
///     var keyProject = new Gcp.Organizations.Project("key_project", new()
///     {
///         ProjectId = "key-proj",
///         Name = "key-proj",
///         FolderId = autokmsFolder.FolderId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             autokmsFolder,
///         },
///     });
///
///     // Enable the Cloud KMS API
///     var kmsApiService = new Gcp.Projects.Service("kms_api_service", new()
///     {
///         ServiceName = "cloudkms.googleapis.com",
///         Project = keyProject.ProjectId,
///         DisableDependentServices = true,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             keyProject,
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
///     //Create KMS Service Agent
///     var kmsServiceAgent = new Gcp.Projects.ServiceIdentity("kms_service_agent", new()
///     {
///         Service = "cloudkms.googleapis.com",
///         Project = keyProject.Number,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitEnableServiceApi,
///         },
///     });
///
///     // Wait delay after creating service agent.
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
///     //Grant the KMS Service Agent the Cloud KMS Admin role
///     var autokeyProjectAdmin = new Gcp.Projects.IAMMember("autokey_project_admin", new()
///     {
///         Project = keyProject.ProjectId,
///         Role = "roles/cloudkms.admin",
///         Member = keyProject.Number.Apply(number => $"serviceAccount:service-{number}@gcp-sa-cloudkms.iam.gserviceaccount.com"),
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
///     var example_autokeyconfig = new Gcp.Kms.AutokeyConfig("example-autokeyconfig", new()
///     {
///         Folder = autokmsFolder.Id,
///         KeyProject = keyProject.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitSrvAccPermissions,
///         },
///     });
///
///     // Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
///     // because setting the config takes a little to fully propagate.
///     var waitAutokeyPropagation = new Time.Sleep("wait_autokey_propagation", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example_autokeyconfig,
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
/// 		// Create Folder in GCP Organization
/// 		autokmsFolder, err := organizations.NewFolder(ctx, "autokms_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-cfg"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create the key project
/// 		keyProject, err := organizations.NewProject(ctx, "key_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("key-proj"),
/// 			Name:           pulumi.String("key-proj"),
/// 			FolderId:       autokmsFolder.FolderId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			autokmsFolder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Enable the Cloud KMS API
/// 		kmsApiService, err := projects.NewService(ctx, "kms_api_service", &projects.ServiceArgs{
/// 			Service:                  pulumi.String("cloudkms.googleapis.com"),
/// 			Project:                  keyProject.ProjectId,
/// 			DisableDependentServices: pulumi.Bool(true),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			keyProject,
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
/// 			Project: keyProject.Number,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitEnableServiceApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after creating service agent.
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
/// 			Project: keyProject.ProjectId,
/// 			Role:    pulumi.String("roles/cloudkms.admin"),
/// 			Member: keyProject.Number.ApplyT(func(number string) (string, error) {
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
/// 		example_autokeyconfig, err := kms.NewAutokeyConfig(ctx, "example-autokeyconfig", &kms.AutokeyConfigArgs{
/// 			Folder: autokmsFolder.ID(),
/// 			KeyProject: keyProject.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitSrvAccPermissions,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
/// 		// because setting the config takes a little to fully propagate.
/// 		_, err = time.NewSleep(ctx, "wait_autokey_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example_autokeyconfig,
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
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
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
/// import com.pulumi.gcp.kms.AutokeyConfig;
/// import com.pulumi.gcp.kms.AutokeyConfigArgs;
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
///         // Create Folder in GCP Organization
///         var autokmsFolder = new Folder("autokmsFolder", FolderArgs.builder()
///             .displayName("folder-cfg")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         // Create the key project
///         var keyProject = new Project("keyProject", ProjectArgs.builder()
///             .projectId("key-proj")
///             .name("key-proj")
///             .folderId(autokmsFolder.folderId())
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(autokmsFolder)
///                 .build());
///
///         // Enable the Cloud KMS API
///         var kmsApiService = new Service("kmsApiService", ServiceArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(keyProject.projectId())
///             .disableDependentServices(true)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(keyProject)
///                 .build());
///
///         // Wait delay after enabling APIs
///         var waitEnableServiceApi = new Sleep("waitEnableServiceApi", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsApiService)
///                 .build());
///
///         //Create KMS Service Agent
///         var kmsServiceAgent = new ServiceIdentity("kmsServiceAgent", ServiceIdentityArgs.builder()
///             .service("cloudkms.googleapis.com")
///             .project(keyProject.number())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitEnableServiceApi)
///                 .build());
///
///         // Wait delay after creating service agent.
///         var waitServiceAgent = new Sleep("waitServiceAgent", SleepArgs.builder()
///             .createDuration("10s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kmsServiceAgent)
///                 .build());
///
///         //Grant the KMS Service Agent the Cloud KMS Admin role
///         var autokeyProjectAdmin = new IAMMember("autokeyProjectAdmin", IAMMemberArgs.builder()
///             .project(keyProject.projectId())
///             .role("roles/cloudkms.admin")
///             .member(keyProject.number().applyValue(_number -> String.format("serviceAccount:service-%s@gcp-sa-cloudkms.iam.gserviceaccount.com", _number)))
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
///         var example_autokeyconfig = new AutokeyConfig("example-autokeyconfig", AutokeyConfigArgs.builder()
///             .folder(autokmsFolder.id())
///             .keyProject(keyProject.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitSrvAccPermissions)
///                 .build());
///
///         // Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
///         // because setting the config takes a little to fully propagate.
///         var waitAutokeyPropagation = new Sleep("waitAutokeyPropagation", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example_autokeyconfig)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create Folder in GCP Organization
///   autokmsFolder:
///     type: gcp:organizations:Folder
///     name: autokms_folder
///     properties:
///       displayName: folder-cfg
///       parent: organizations/123456789
///       deletionProtection: false
///   # Create the key project
///   keyProject:
///     type: gcp:organizations:Project
///     name: key_project
///     properties:
///       projectId: key-proj
///       name: key-proj
///       folderId: ${autokmsFolder.folderId}
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///     options:
///       dependsOn:
///         - ${autokmsFolder}
///   # Enable the Cloud KMS API
///   kmsApiService:
///     type: gcp:projects:Service
///     name: kms_api_service
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${keyProject.projectId}
///       disableDependentServices: true
///     options:
///       dependsOn:
///         - ${keyProject}
///   # Wait delay after enabling APIs
///   waitEnableServiceApi:
///     type: time:Sleep
///     name: wait_enable_service_api
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${kmsApiService}
///   #Create KMS Service Agent
///   kmsServiceAgent:
///     type: gcp:projects:ServiceIdentity
///     name: kms_service_agent
///     properties:
///       service: cloudkms.googleapis.com
///       project: ${keyProject.number}
///     options:
///       dependsOn:
///         - ${waitEnableServiceApi}
///   # Wait delay after creating service agent.
///   waitServiceAgent:
///     type: time:Sleep
///     name: wait_service_agent
///     properties:
///       createDuration: 10s
///     options:
///       dependsOn:
///         - ${kmsServiceAgent}
///   #Grant the KMS Service Agent the Cloud KMS Admin role
///   autokeyProjectAdmin:
///     type: gcp:projects:IAMMember
///     name: autokey_project_admin
///     properties:
///       project: ${keyProject.projectId}
///       role: roles/cloudkms.admin
///       member: serviceAccount:service-${keyProject.number}@gcp-sa-cloudkms.iam.gserviceaccount.com
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
///   example-autokeyconfig:
///     type: gcp:kms:AutokeyConfig
///     properties:
///       folder: ${autokmsFolder.id}
///       keyProject: projects/${keyProject.projectId}
///     options:
///       dependsOn:
///         - ${waitSrvAccPermissions}
///   # Wait delay after setting AutokeyConfig, to prevent diffs on reapply,
///   # because setting the config takes a little to fully propagate.
///   waitAutokeyPropagation:
///     type: time:Sleep
///     name: wait_autokey_propagation
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${["example-autokeyconfig"]}
/// ```
///
///
/// ## Import
///
/// AutokeyConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/autokeyConfig`
///
/// * `{{folder}}`
///
/// When using the `pulumi import` command, AutokeyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/autokeyConfig:AutokeyConfig default folders/{{folder}}/autokeyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/autokeyConfig:AutokeyConfig default {{folder}}
/// ```
class AutokeyConfig extends pulumi.CustomResource {
  /// The etag of the AutokeyConfig for optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// The folder for which to retrieve config.
  late final pulumi.Output<String> folder;
  /// The target key project for a given folder where KMS Autokey will provision a
  /// CryptoKey for any new KeyHandle the Developer creates. Should have the form
  /// `projects/&lt;project_id_or_number&gt;`.
  late final pulumi.Output<String?> keyProject;

  /// Creates a new [AutokeyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutokeyConfig]. {@macro pulumi_kms_autokey_config_autokey_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutokeyConfig(
    String name, {
    AutokeyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/autokeyConfig:AutokeyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    keyProject = registerOutput<String?>('keyProject');
  }

  /// Gets an existing [AutokeyConfig] resource's state with the given [name] and [id].
  static AutokeyConfig get(
    String name,
    pulumi.Input<String> id, {
    AutokeyConfigState? state,
  }) {
    return AutokeyConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutokeyConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/autokeyConfig:AutokeyConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    keyProject = registerOutput<String?>('keyProject');
  }
}

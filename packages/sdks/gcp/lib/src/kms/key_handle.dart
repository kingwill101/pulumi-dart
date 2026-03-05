import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_handle_args.dart';
import 'key_handle_state.dart';

/// ## Example Usage
///
/// ### Kms Key Handle Basic
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
///     displayName: "folder-kh",
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
/// // Create the resource project
/// const resourceProject = new gcp.organizations.Project("resource_project", {
///     projectId: "res-proj",
///     name: "res-proj",
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
/// const autokeyConfig = new gcp.kms.AutokeyConfig("autokey_config", {
///     folder: autokmsFolder.folderId,
///     keyProject: pulumi.interpolate`projects/${keyProject.projectId}`,
/// }, {
///     dependsOn: [waitSrvAccPermissions],
/// });
/// // Wait delay for autokey config to take effect
/// const waitAutokeyConfig = new time.Sleep("wait_autokey_config", {createDuration: "10s"}, {
///     dependsOn: [autokeyConfig],
/// });
/// const example_keyhandle = new gcp.kms.KeyHandle("example-keyhandle", {
///     project: resourceProject.projectId,
///     name: "tf-test-key-handle",
///     location: "global",
///     resourceTypeSelector: "storage.googleapis.com/Bucket",
/// }, {
///     dependsOn: [waitAutokeyConfig],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// # Create Folder in GCP Organization
/// autokms_folder = gcp.organizations.Folder("autokms_folder",
///     display_name="folder-kh",
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
/// # Create the resource project
/// resource_project = gcp.organizations.Project("resource_project",
///     project_id="res-proj",
///     name="res-proj",
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
/// autokey_config = gcp.kms.AutokeyConfig("autokey_config",
///     folder=autokms_folder.folder_id,
///     key_project=key_project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     opts = pulumi.ResourceOptions(depends_on=[wait_srv_acc_permissions]))
/// # Wait delay for autokey config to take effect
/// wait_autokey_config = time.Sleep("wait_autokey_config", create_duration="10s",
/// opts = pulumi.ResourceOptions(depends_on=[autokey_config]))
/// example_keyhandle = gcp.kms.KeyHandle("example-keyhandle",
///     project=resource_project.project_id,
///     name="tf-test-key-handle",
///     location="global",
///     resource_type_selector="storage.googleapis.com/Bucket",
///     opts = pulumi.ResourceOptions(depends_on=[wait_autokey_config]))
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
///         DisplayName = "folder-kh",
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
///     // Create the resource project
///     var resourceProject = new Gcp.Organizations.Project("resource_project", new()
///     {
///         ProjectId = "res-proj",
///         Name = "res-proj",
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
///     var autokeyConfig = new Gcp.Kms.AutokeyConfig("autokey_config", new()
///     {
///         Folder = autokmsFolder.FolderId,
///         KeyProject = keyProject.ProjectId.Apply(projectId => $"projects/{projectId}"),
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitSrvAccPermissions,
///         },
///     });
///
///     // Wait delay for autokey config to take effect
///     var waitAutokeyConfig = new Time.Sleep("wait_autokey_config", new()
///     {
///         CreateDuration = "10s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             autokeyConfig,
///         },
///     });
///
///     var example_keyhandle = new Gcp.Kms.KeyHandle("example-keyhandle", new()
///     {
///         Project = resourceProject.ProjectId,
///         Name = "tf-test-key-handle",
///         Location = "global",
///         ResourceTypeSelector = "storage.googleapis.com/Bucket",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitAutokeyConfig,
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
/// 			DisplayName:        pulumi.String("folder-kh"),
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
/// 		// Create the resource project
/// 		resourceProject, err := organizations.NewProject(ctx, "resource_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("res-proj"),
/// 			Name:           pulumi.String("res-proj"),
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
/// 		autokeyConfig, err := kms.NewAutokeyConfig(ctx, "autokey_config", &kms.AutokeyConfigArgs{
/// 			Folder: autokmsFolder.FolderId,
/// 			KeyProject: keyProject.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitSrvAccPermissions,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Wait delay for autokey config to take effect
/// 		waitAutokeyConfig, err := time.NewSleep(ctx, "wait_autokey_config", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("10s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			autokeyConfig,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewKeyHandle(ctx, "example-keyhandle", &kms.KeyHandleArgs{
/// 			Project:              resourceProject.ProjectId,
/// 			Name:                 pulumi.String("tf-test-key-handle"),
/// 			Location:             pulumi.String("global"),
/// 			ResourceTypeSelector: pulumi.String("storage.googleapis.com/Bucket"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitAutokeyConfig,
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
/// import com.pulumi.gcp.kms.KeyHandle;
/// import com.pulumi.gcp.kms.KeyHandleArgs;
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
///             .displayName("folder-kh")
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
///         // Create the resource project
///         var resourceProject = new Project("resourceProject", ProjectArgs.builder()
///             .projectId("res-proj")
///             .name("res-proj")
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
///         var autokeyConfig = new AutokeyConfig("autokeyConfig", AutokeyConfigArgs.builder()
///             .folder(autokmsFolder.folderId())
///             .keyProject(keyProject.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitSrvAccPermissions)
///                 .build());
///
///         // Wait delay for autokey config to take effect
///         var waitAutokeyConfig = new Sleep("waitAutokeyConfig", SleepArgs.builder()
///             .createDuration("10s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(autokeyConfig)
///                 .build());
///
///         var example_keyhandle = new KeyHandle("example-keyhandle", KeyHandleArgs.builder()
///             .project(resourceProject.projectId())
///             .name("tf-test-key-handle")
///             .location("global")
///             .resourceTypeSelector("storage.googleapis.com/Bucket")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitAutokeyConfig)
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
///       displayName: folder-kh
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
///   # Create the resource project
///   resourceProject:
///     type: gcp:organizations:Project
///     name: resource_project
///     properties:
///       projectId: res-proj
///       name: res-proj
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
///   autokeyConfig:
///     type: gcp:kms:AutokeyConfig
///     name: autokey_config
///     properties:
///       folder: ${autokmsFolder.folderId}
///       keyProject: projects/${keyProject.projectId}
///     options:
///       dependsOn:
///         - ${waitSrvAccPermissions}
///   # Wait delay for autokey config to take effect
///   waitAutokeyConfig:
///     type: time:Sleep
///     name: wait_autokey_config
///     properties:
///       createDuration: 10s
///     options:
///       dependsOn:
///         - ${autokeyConfig}
///   example-keyhandle:
///     type: gcp:kms:KeyHandle
///     properties:
///       project: ${resourceProject.projectId}
///       name: tf-test-key-handle
///       location: global
///       resourceTypeSelector: storage.googleapis.com/Bucket
///     options:
///       dependsOn:
///         - ${waitAutokeyConfig}
/// ```
///
///
/// ## Import
///
/// KeyHandle can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/keyHandles/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, KeyHandle can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default projects/{{project}}/locations/{{location}}/keyHandles/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/keyHandle:KeyHandle default {{location}}/{{name}}
/// ```
class KeyHandle extends pulumi.CustomResource {
  /// A reference to a Cloud KMS CryptoKey that can be used for CMEK in the requested
  /// product/project/location, for example
  /// `projects/1/locations/us-east1/keyRings/foo/cryptoKeys/bar-ffffff`
  late final pulumi.Output<String> kmsKey;
  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  late final pulumi.Output<String> location;
  /// The resource name for the KeyHandle.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  late final pulumi.Output<String> resourceTypeSelector;

  /// Creates a new [KeyHandle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyHandle]. {@macro pulumi_kms_key_handle_key_handle_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyHandle(
    String name, {
    KeyHandleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyHandle:KeyHandle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kmsKey = registerOutput<String>('kmsKey');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resourceTypeSelector = registerOutput<String>('resourceTypeSelector');
  }

  /// Gets an existing [KeyHandle] resource's state with the given [name] and [id].
  static KeyHandle get(
    String name,
    pulumi.Input<String> id, {
    KeyHandleState? state,
  }) {
    return KeyHandle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KeyHandle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyHandle:KeyHandle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kmsKey = registerOutput<String>('kmsKey');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    resourceTypeSelector = registerOutput<String>('resourceTypeSelector');
  }
}

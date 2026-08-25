import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_kaj_policy_config_args.dart';
import 'folder_kaj_policy_config_default_key_access_justification_policy.dart';
import 'folder_kaj_policy_config_state.dart';

/// `FolderKajPolicyConfigs` is a folder-level singleton resource
/// used to configure the default KAJ policy of newly created key.
///
/// &gt; **Note:** FolderKajPolicyConfigs cannot be deleted from Google Cloud Platform.
/// Destroying a Terraform-managed FolderKajPolicyConfigs will remove it from state but
/// *will not delete the resource from Google Cloud Platform.*
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about FolderKajPolicyConfig, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/KeyAccessJustificationsPolicyConfig)
/// * How-to Guides
/// * [Set default Key Access Justifications policy](https://cloud.google.com/assured-workloads/key-access-justifications/docs/set-default-policy)
///
/// ## Example Usage
///
/// ### Kms Folder Kaj Policy Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
/// import * as time from "@pulumiverse/time";
///
/// // Create Folder in GCP Organization.
/// const kajFolder = new gcp.organizations.Folder("kaj_folder", {
///     displayName: "folder-kajc",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const projectSuffix = new random.index.Id("project_suffix", {byteLength: 4});
/// // Create a project for enabling KMS API.
/// const kmsProject = new gcp.organizations.Project("kms_project", {
///     projectId: `kms-api-project${projectSuffix.hex}`,
///     name: `kms-api-project${projectSuffix.hex}`,
///     folderId: kajFolder.folderId,
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// }, {
///     dependsOn: [kajFolder],
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
/// // Update folder level KAJ default policy
/// const example = new gcp.kms.FolderKajPolicyConfig("example", {
///     folder: kajFolder.folderId,
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
/// import pulumi_random as random
/// import pulumiverse_time as time
///
/// # Create Folder in GCP Organization.
/// kaj_folder = gcp.organizations.Folder("kaj_folder",
///     display_name="folder-kajc",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// project_suffix = random.Id("project_suffix", byte_length=4)
/// # Create a project for enabling KMS API.
/// kms_project = gcp.organizations.Project("kms_project",
///     project_id=f"kms-api-project{project_suffix['hex']}",
///     name=f"kms-api-project{project_suffix['hex']}",
///     folder_id=kaj_folder.folder_id,
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE",
///     opts = pulumi.ResourceOptions(depends_on=[kaj_folder]))
/// # Enable the Cloud KMS API.
/// kms_api_service = gcp.projects.Service("kms_api_service",
///     service="cloudkms.googleapis.com",
///     project=kms_project.project_id,
///     disable_dependent_services=True,
///     opts = pulumi.ResourceOptions(depends_on=[kms_project]))
/// wait_enable_service_api = time.Sleep("wait_enable_service_api", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[kms_api_service]))
/// # Update folder level KAJ default policy
/// example = gcp.kms.FolderKajPolicyConfig("example",
///     folder=kaj_folder.folder_id,
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
/// using Random = Pulumi.Random;
/// using Time = Pulumiverse.Time;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create Folder in GCP Organization.
///     var kajFolder = new Gcp.Organizations.Folder("kaj_folder", new()
///     {
///         DisplayName = "folder-kajc",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var projectSuffix = new Random.Id("project_suffix", new()
///     {
///         ByteLength = 4,
///     });
///
///     // Create a project for enabling KMS API.
///     var kmsProject = new Gcp.Organizations.Project("kms_project", new()
///     {
///         ProjectId = $"kms-api-project{projectSuffix.Hex}",
///         Name = $"kms-api-project{projectSuffix.Hex}",
///         FolderId = kajFolder.FolderId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             kajFolder,
///         },
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
///     // Update folder level KAJ default policy
///     var example = new Gcp.Kms.FolderKajPolicyConfig("example", new()
///     {
///         Folder = kajFolder.FolderId,
///         DefaultKeyAccessJustificationPolicy = new Gcp.Kms.Inputs.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create Folder in GCP Organization.
/// 		kajFolder, err := organizations.NewFolder(ctx, "kaj_folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("folder-kajc"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectSuffix, err := random.NewId(ctx, "project_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a project for enabling KMS API.
/// 		kmsProject, err := organizations.NewProject(ctx, "kms_project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.Sprintf("kms-api-project%v", projectSuffix.Hex),
/// 			Name:           pulumi.Sprintf("kms-api-project%v", projectSuffix.Hex),
/// 			FolderId:       kajFolder.FolderId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			kajFolder,
/// 		}))
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
/// 		// Update folder level KAJ default policy
/// 		_, err = kms.NewFolderKajPolicyConfig(ctx, "example", &kms.FolderKajPolicyConfigArgs{
/// 			Folder: kajFolder.FolderId,
/// 			DefaultKeyAccessJustificationPolicy: &kms.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///     random = {
///       source = "pulumi/random"
///     }
///     time = {
///       source = "pulumi/time"
///     }
///   }
/// }
///
/// # Create Folder in GCP Organization.
/// resource "gcp_organizations_folder" "kaj_folder" {
///   display_name        = "folder-kajc"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "random_id" "project_suffix" {
///   byte_length = 4
/// }
/// # Create a project for enabling KMS API.
/// resource "gcp_organizations_project" "kms_project" {
///   depends_on      = [gcp_organizations_folder.kaj_folder]
///   project_id      ="kms-api-project${random_id.project_suffix.hex}"
///   name            ="kms-api-project${random_id.project_suffix.hex}"
///   folder_id       = gcp_organizations_folder.kaj_folder.folder_id
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// # Enable the Cloud KMS API.
/// resource "gcp_projects_service" "kms_api_service" {
///   depends_on                 = [gcp_organizations_project.kms_project]
///   service                    = "cloudkms.googleapis.com"
///   project                    = gcp_organizations_project.kms_project.project_id
///   disable_dependent_services = true
/// }
/// resource "time_sleep" "wait_enable_service_api" {
///   depends_on      = [gcp_projects_service.kms_api_service]
///   create_duration = "30s"
/// }
/// # Update folder level KAJ default policy
/// resource "gcp_kms_folderkajpolicyconfig" "example" {
///   depends_on = [time_sleep.wait_enable_service_api]
///   folder     = gcp_organizations_folder.kaj_folder.folder_id
///   default_key_access_justification_policy = {
///     allowed_access_reasons = ["CUSTOMER_INITIATED_ACCESS", "GOOGLE_INITIATED_SYSTEM_OPERATION"]
///   }
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.kms.FolderKajPolicyConfig;
/// import com.pulumi.gcp.kms.FolderKajPolicyConfigArgs;
/// import com.pulumi.gcp.kms.inputs.FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs;
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
///         // Create Folder in GCP Organization.
///         var kajFolder = new Folder("kajFolder", FolderArgs.builder()
///             .displayName("folder-kajc")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var projectSuffix = new Id("projectSuffix", IdArgs.builder()
///             .byteLength(4)
///             .build());
///
///         // Create a project for enabling KMS API.
///         var kmsProject = new Project("kmsProject", ProjectArgs.builder()
///             .projectId(String.format("kms-api-project%s", projectSuffix.get("hex")))
///             .name(String.format("kms-api-project%s", projectSuffix.get("hex")))
///             .folderId(kajFolder.folderId())
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(kajFolder)
///                 .build());
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
///         // Update folder level KAJ default policy
///         var example = new FolderKajPolicyConfig("example", FolderKajPolicyConfigArgs.builder()
///             .folder(kajFolder.folderId())
///             .defaultKeyAccessJustificationPolicy(FolderKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs.builder()
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
///   # Create Folder in GCP Organization.
///   kajFolder:
///     type: gcp:organizations:Folder
///     name: kaj_folder
///     properties:
///       displayName: folder-kajc
///       parent: organizations/123456789
///       deletionProtection: false
///   projectSuffix:
///     type: random:Id
///     name: project_suffix
///     properties:
///       byteLength: 4
///   # Create a project for enabling KMS API.
///   kmsProject:
///     type: gcp:organizations:Project
///     name: kms_project
///     properties:
///       projectId: kms-api-project${projectSuffix.hex}
///       name: kms-api-project${projectSuffix.hex}
///       folderId: ${kajFolder.folderId}
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///     options:
///       dependsOn:
///         - ${kajFolder}
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
///   # Update folder level KAJ default policy
///   example:
///     type: gcp:kms:FolderKajPolicyConfig
///     properties:
///       folder: ${kajFolder.folderId}
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
/// FolderKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/kajPolicyConfig`
/// * `{{folder}}`
///
///
/// When using the `pulumi import` command, FolderKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default folders/{{folder}}/kajPolicyConfig
/// $ pulumi import gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig default {{folder}}
/// ```
class FolderKajPolicyConfig extends pulumi.CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this folder. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final pulumi.Output<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?> defaultKeyAccessJustificationPolicy;
  /// The numeric folder number for which to retrieve config.
  late final pulumi.Output<String> folder;

  /// Creates a new [FolderKajPolicyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderKajPolicyConfig]. {@macro pulumi_kms_folder_kaj_policy_config_folder_kaj_policy_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderKajPolicyConfig(
    String name, {
    FolderKajPolicyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    defaultKeyAccessJustificationPolicy = registerOutput<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
  }

  /// Gets an existing [FolderKajPolicyConfig] resource's state with the given [name] and [id].
  static FolderKajPolicyConfig get(
    String name,
    pulumi.Input<String> id, {
    FolderKajPolicyConfigState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FolderKajPolicyConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FolderKajPolicyConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultKeyAccessJustificationPolicy = registerOutput<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
  }

  /// Creates a typed reference to an existing [FolderKajPolicyConfig] resource.
  FolderKajPolicyConfig.reference(String urn)
    : super(
        'gcp:kms/folderKajPolicyConfig:FolderKajPolicyConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultKeyAccessJustificationPolicy = registerOutput<FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy?>('defaultKeyAccessJustificationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderKajPolicyConfigDefaultKeyAccessJustificationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    folder = registerOutput<String>('folder');
  }
}

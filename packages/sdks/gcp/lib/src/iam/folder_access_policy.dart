import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_access_policy_args.dart';
import 'folder_access_policy_details.dart';
import 'folder_access_policy_state.dart';

/// Represents an IAM v3 Access Policy parented by a Folder. This policy defines rules
/// that allow or deny access to resources within the specified folder based on principals and conditions.
/// See the Cloud IAM documentation for more details on Access Policies.
///
///
/// To get more information about FolderAccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v3/folders.locations.accessPolicies)
///
/// ## Example Usage
///
/// ### Access Policy Folder Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "ap-folder-",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const project = new gcp.organizations.Project("project", {
///     projectId: "ap-project-",
///     name: "ap-project-",
///     folderId: folder.folderId,
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// }, {
///     dependsOn: [folder],
/// });
/// const iamApi = new gcp.projects.Service("iam_api", {
///     project: project.projectId,
///     service: "iam.googleapis.com",
///     disableOnDestroy: false,
/// }, {
///     dependsOn: [project],
/// });
/// const waitForPropagation = new time.Sleep("wait_for_propagation", {createDuration: "30s"}, {
///     dependsOn: [
///         folder,
///         iamApi,
///     ],
/// });
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     accountId: "svc-acc-",
///     displayName: "Test Service Account for Access Policy",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitForPropagation],
/// });
/// const example = new gcp.iam.FolderAccessPolicy("example", {
///     folder: folder.folderId,
///     location: "global",
///     accessPolicyId: "my-folder-policy-",
///     details: {
///         rules: [{
///             effect: "ALLOW",
///             principals: [pulumi.interpolate`principal://iam.googleapis.com/projects/-/serviceAccounts/${testSa.email}`],
///             operation: {
///                 permissions: ["eventarc.googleapis.com/messageBuses.publish"],
///             },
///         }],
///     },
/// }, {
///     dependsOn: [
///         waitForPropagation,
///         testSa,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// folder = gcp.organizations.Folder("folder",
///     display_name="ap-folder-",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// project = gcp.organizations.Project("project",
///     project_id="ap-project-",
///     name="ap-project-",
///     folder_id=folder.folder_id,
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE",
///     opts = pulumi.ResourceOptions(depends_on=[folder]))
/// iam_api = gcp.projects.Service("iam_api",
///     project=project.project_id,
///     service="iam.googleapis.com",
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// wait_for_propagation = time.Sleep("wait_for_propagation", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         folder,
///         iam_api,
///     ]))
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     account_id="svc-acc-",
///     display_name="Test Service Account for Access Policy",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_propagation]))
/// example = gcp.iam.FolderAccessPolicy("example",
///     folder=folder.folder_id,
///     location="global",
///     access_policy_id="my-folder-policy-",
///     details={
///         "rules": [{
///             "effect": "ALLOW",
///             "principals": [test_sa.email.apply(lambda email: f"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}")],
///             "operation": {
///                 "permissions": ["eventarc.googleapis.com/messageBuses.publish"],
///             },
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             wait_for_propagation,
///             test_sa,
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "ap-folder-",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "ap-project-",
///         Name = "ap-project-",
///         FolderId = folder.FolderId,
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///         },
///     });
///
///     var iamApi = new Gcp.Projects.Service("iam_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "iam.googleapis.com",
///         DisableOnDestroy = false,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project,
///         },
///     });
///
///     var waitForPropagation = new Time.Sleep("wait_for_propagation", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///             iamApi,
///         },
///     });
///
///     var testSa = new Gcp.ServiceAccount.Account("test_sa", new()
///     {
///         AccountId = "svc-acc-",
///         DisplayName = "Test Service Account for Access Policy",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
///         },
///     });
///
///     var example = new Gcp.Iam.FolderAccessPolicy("example", new()
///     {
///         Folder = folder.FolderId,
///         Location = "global",
///         AccessPolicyId = "my-folder-policy-",
///         Details = new Gcp.Iam.Inputs.FolderAccessPolicyDetailsArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.Iam.Inputs.FolderAccessPolicyDetailsRuleArgs
///                 {
///                     Effect = "ALLOW",
///                     Principals = new[]
///                     {
///                         testSa.Email.Apply(email => $"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}"),
///                     },
///                     Operation = new Gcp.Iam.Inputs.FolderAccessPolicyDetailsRuleOperationArgs
///                     {
///                         Permissions = new[]
///                         {
///                             "eventarc.googleapis.com/messageBuses.publish",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
///             testSa,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("ap-folder-"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("ap-project-"),
/// 			Name:           pulumi.String("ap-project-"),
/// 			FolderId:       folder.FolderId,
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamApi, err := projects.NewService(ctx, "iam_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("iam.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForPropagation, err := time.NewSleep(ctx, "wait_for_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 			iamApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSa, err := serviceaccount.NewAccount(ctx, "test_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("svc-acc-"),
/// 			DisplayName: pulumi.String("Test Service Account for Access Policy"),
/// 			Project:     project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewFolderAccessPolicy(ctx, "example", &iam.FolderAccessPolicyArgs{
/// 			Folder:         folder.FolderId,
/// 			Location:       pulumi.String("global"),
/// 			AccessPolicyId: pulumi.String("my-folder-policy-"),
/// 			Details: &iam.FolderAccessPolicyDetailsArgs{
/// 				Rules: iam.FolderAccessPolicyDetailsRuleArray{
/// 					&iam.FolderAccessPolicyDetailsRuleArgs{
/// 						Effect: pulumi.String("ALLOW"),
/// 						Principals: pulumi.StringArray{
/// 							testSa.Email.ApplyT(func(email string) (string, error) {
/// 								return fmt.Sprintf("principal://iam.googleapis.com/projects/-/serviceAccounts/%v", email), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 						Operation: &iam.FolderAccessPolicyDetailsRuleOperationArgs{
/// 							Permissions: pulumi.StringArray{
/// 								pulumi.String("eventarc.googleapis.com/messageBuses.publish"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 			testSa,
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
/// resource "gcp_organizations_folder" "folder" {
///   display_name        = "ap-folder-"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "gcp_organizations_project" "project" {
///   depends_on      = [gcp_organizations_folder.folder]
///   project_id      = "ap-project-"
///   name            = "ap-project-"
///   folder_id       = gcp_organizations_folder.folder.folder_id
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "iam_api" {
///   depends_on         = [gcp_organizations_project.project]
///   project            = gcp_organizations_project.project.project_id
///   service            = "iam.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "time_sleep" "wait_for_propagation" {
///   depends_on      = [gcp_organizations_folder.folder, gcp_projects_service.iam_api]
///   create_duration = "30s"
/// }
/// resource "gcp_serviceaccount_account" "test_sa" {
///   depends_on   = [time_sleep.wait_for_propagation]
///   account_id   = "svc-acc-"
///   display_name = "Test Service Account for Access Policy"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_iam_folderaccesspolicy" "example" {
///   depends_on       = [time_sleep.wait_for_propagation, gcp_serviceaccount_account.test_sa]
///   folder           = gcp_organizations_folder.folder.folder_id
///   location         = "global"
///   access_policy_id = "my-folder-policy-"
///   details = {
///     rules = [{
///       "effect"     = "ALLOW"
///       "principals" = ["principal://iam.googleapis.com/projects/-/serviceAccounts/${gcp_serviceaccount_account.test_sa.email}"]
///       "operation" = {
///         "permissions" = ["eventarc.googleapis.com/messageBuses.publish"]
///       }
///     }]
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.iam.FolderAccessPolicy;
/// import com.pulumi.gcp.iam.FolderAccessPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsRuleArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsRuleOperationArgs;
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
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("ap-folder-")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("ap-project-")
///             .name("ap-project-")
///             .folderId(folder.folderId())
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(folder)
///                 .build());
///
///         var iamApi = new Service("iamApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("iam.googleapis.com")
///             .disableOnDestroy(false)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var waitForPropagation = new Sleep("waitForPropagation", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     folder,
///                     iamApi)
///                 .build());
///
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .accountId("svc-acc-")
///             .displayName("Test Service Account for Access Policy")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForPropagation)
///                 .build());
///
///         var example = new FolderAccessPolicy("example", FolderAccessPolicyArgs.builder()
///             .folder(folder.folderId())
///             .location("global")
///             .accessPolicyId("my-folder-policy-")
///             .details(FolderAccessPolicyDetailsArgs.builder()
///                 .rules(FolderAccessPolicyDetailsRuleArgs.builder()
///                     .effect("ALLOW")
///                     .principals(testSa.email().applyValue(_email -> String.format("principal://iam.googleapis.com/projects/-/serviceAccounts/%s", _email)))
///                     .operation(FolderAccessPolicyDetailsRuleOperationArgs.builder()
///                         .permissions("eventarc.googleapis.com/messageBuses.publish")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     waitForPropagation,
///                     testSa)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: ap-folder-
///       parent: organizations/123456789
///       deletionProtection: false
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: ap-project-
///       name: ap-project-
///       folderId: ${folder.folderId}
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///     options:
///       dependsOn:
///         - ${folder}
///   iamApi:
///     type: gcp:projects:Service
///     name: iam_api
///     properties:
///       project: ${project.projectId}
///       service: iam.googleapis.com
///       disableOnDestroy: false
///     options:
///       dependsOn:
///         - ${project}
///   waitForPropagation:
///     type: time:Sleep
///     name: wait_for_propagation
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
///         - ${folder}
///         - ${iamApi}
///   testSa:
///     type: gcp:serviceaccount:Account
///     name: test_sa
///     properties:
///       accountId: svc-acc-
///       displayName: Test Service Account for Access Policy
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitForPropagation}
///   example:
///     type: gcp:iam:FolderAccessPolicy
///     properties:
///       folder: ${folder.folderId}
///       location: global
///       accessPolicyId: my-folder-policy-
///       details:
///         rules:
///           - effect: ALLOW
///             principals:
///               - principal://iam.googleapis.com/projects/-/serviceAccounts/${testSa.email}
///             operation:
///               permissions:
///                 - eventarc.googleapis.com/messageBuses.publish
///     options:
///       dependsOn:
///         - ${waitForPropagation}
///         - ${testSa}
/// ```
///
///
/// ## Import
///
/// FolderAccessPolicy can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/accessPolicies/{{access_policy_id}}`
/// * `{{folder}}/{{location}}/{{access_policy_id}}`
///
///
/// When using the `pulumi import` command, FolderAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/folderAccessPolicy:FolderAccessPolicy default folders/{{folder}}/locations/{{location}}/accessPolicies/{{access_policy_id}}
/// $ pulumi import gcp:iam/folderAccessPolicy:FolderAccessPolicy default {{folder}}/{{location}}/{{access_policy_id}}
/// ```
class FolderAccessPolicy extends pulumi.CustomResource {
  /// The ID to use for the access policy, which
  /// will become the final component of the access policy's
  /// resource name.
  /// This value must start with a lowercase letter followed by up to 62
  /// lowercase letters, numbers, hyphens, or dots. Pattern,
  /// /a-z{2,62}/.
  /// This value must be unique among all access policies with the same parent.
  late final pulumi.Output<String> accessPolicyId;
  /// User defined annotations. See https://google.aip.dev/148#annotations for
  /// more details such as format and size limitations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The time when the access policy was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Access policy details.
  /// Structure is documented below.
  late final pulumi.Output<FolderAccessPolicyDetails?> details;
  /// The description of the access policy. Must be less than
  /// or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The etag for the access policy.
  /// If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> folder;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the access policy.
  /// The following formats are supported:
  /// * `projects/{project_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `projects/{project_number}/locations/{location}/accessPolicies/{policy_id}`
  /// * `folders/{folder_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `organizations/{organization_id}/locations/{location}/accessPolicies/{policy_id}`
  late final pulumi.Output<String> name;
  /// The globally unique ID of the access policy.
  late final pulumi.Output<String> uid;
  /// The time when the access policy was most recently
  /// updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FolderAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderAccessPolicy]. {@macro pulumi_iam_folder_access_policy_folder_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderAccessPolicy(
    String name, {
    FolderAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/folderAccessPolicy:FolderAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FolderAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FolderAccessPolicy] resource's state with the given [name] and [id].
  static FolderAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    FolderAccessPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FolderAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FolderAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/folderAccessPolicy:FolderAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FolderAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [FolderAccessPolicy] resource.
  FolderAccessPolicy.reference(String urn)
    : super(
        'gcp:iam/folderAccessPolicy:FolderAccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<FolderAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FolderAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}

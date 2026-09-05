import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_access_policy_args.dart';
import 'project_access_policy_details.dart';
import 'project_access_policy_state.dart';

/// Represents an IAM v3 Access Policy parented by a Project. This policy defines rules
/// that allow or deny access to resources within the specified project based on principals and conditions.
/// See the Cloud IAM documentation for more details on Access Policies.
///
///
/// To get more information about ProjectAccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v3/projects.locations.accessPolicies)
///
/// ## Example Usage
///
/// ### Access Policy Project Minimal
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "ap-project-",
///     name: "ap-project-",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const iamApi = new gcp.projects.Service("iam_api", {
///     project: project.projectId,
///     service: "iam.googleapis.com",
///     disableOnDestroy: false,
/// });
/// const waitForProjectPropagation = new time.Sleep("wait_for_project_propagation", {createDuration: "30s"}, {
///     dependsOn: [iamApi],
/// });
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     accountId: "svc-acc-",
///     displayName: "Test Service Account for Access Policy",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitForProjectPropagation],
/// });
/// const example = new gcp.iam.ProjectAccessPolicy("example", {
///     project: project.projectId,
///     location: "global",
///     accessPolicyId: "my-project-policy-",
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
///         waitForProjectPropagation,
///         testSa,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="ap-project-",
///     name="ap-project-",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// iam_api = gcp.projects.Service("iam_api",
///     project=project.project_id,
///     service="iam.googleapis.com",
///     disable_on_destroy=False)
/// wait_for_project_propagation = time.Sleep("wait_for_project_propagation", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[iam_api]))
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     account_id="svc-acc-",
///     display_name="Test Service Account for Access Policy",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_project_propagation]))
/// example = gcp.iam.ProjectAccessPolicy("example",
///     project=project.project_id,
///     location="global",
///     access_policy_id="my-project-policy-",
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
///             wait_for_project_propagation,
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
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "ap-project-",
///         Name = "ap-project-",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var iamApi = new Gcp.Projects.Service("iam_api", new()
///     {
///         Project = project.ProjectId,
///         ServiceName = "iam.googleapis.com",
///         DisableOnDestroy = false,
///     });
///
///     var waitForProjectPropagation = new Time.Sleep("wait_for_project_propagation", new()
///     {
///         CreateDuration = "30s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
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
///             waitForProjectPropagation,
///         },
///     });
///
///     var example = new Gcp.Iam.ProjectAccessPolicy("example", new()
///     {
///         Project = project.ProjectId,
///         Location = "global",
///         AccessPolicyId = "my-project-policy-",
///         Details = new Gcp.Iam.Inputs.ProjectAccessPolicyDetailsArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.Iam.Inputs.ProjectAccessPolicyDetailsRuleArgs
///                 {
///                     Effect = "ALLOW",
///                     Principals = new[]
///                     {
///                         testSa.Email.Apply(email => $"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}"),
///                     },
///                     Operation = new Gcp.Iam.Inputs.ProjectAccessPolicyDetailsRuleOperationArgs
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
///             waitForProjectPropagation,
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
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("ap-project-"),
/// 			Name:           pulumi.String("ap-project-"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		iamApi, err := projects.NewService(ctx, "iam_api", &projects.ServiceArgs{
/// 			Project:          project.ProjectId,
/// 			Service:          pulumi.String("iam.googleapis.com"),
/// 			DisableOnDestroy: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForProjectPropagation, err := time.NewSleep(ctx, "wait_for_project_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
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
/// 			waitForProjectPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewProjectAccessPolicy(ctx, "example", &iam.ProjectAccessPolicyArgs{
/// 			Project:        project.ProjectId,
/// 			Location:       pulumi.String("global"),
/// 			AccessPolicyId: pulumi.String("my-project-policy-"),
/// 			Details: &iam.ProjectAccessPolicyDetailsArgs{
/// 				Rules: iam.ProjectAccessPolicyDetailsRuleArray{
/// 					&iam.ProjectAccessPolicyDetailsRuleArgs{
/// 						Effect: pulumi.String("ALLOW"),
/// 						Principals: pulumi.StringArray{
/// 							testSa.Email.ApplyT(func(email string) (string, error) {
/// 								return fmt.Sprintf("principal://iam.googleapis.com/projects/-/serviceAccounts/%v", email), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 						Operation: &iam.ProjectAccessPolicyDetailsRuleOperationArgs{
/// 							Permissions: pulumi.StringArray{
/// 								pulumi.String("eventarc.googleapis.com/messageBuses.publish"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForProjectPropagation,
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
/// resource "gcp_organizations_project" "project" {
///   project_id      = "ap-project-"
///   name            = "ap-project-"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "iam_api" {
///   project            = gcp_organizations_project.project.project_id
///   service            = "iam.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "time_sleep" "wait_for_project_propagation" {
///   depends_on      = [gcp_projects_service.iam_api]
///   create_duration = "30s"
/// }
/// resource "gcp_serviceaccount_account" "test_sa" {
///   depends_on   = [time_sleep.wait_for_project_propagation]
///   account_id   = "svc-acc-"
///   display_name = "Test Service Account for Access Policy"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_iam_projectaccesspolicy" "example" {
///   depends_on       = [time_sleep.wait_for_project_propagation, gcp_serviceaccount_account.test_sa]
///   project          = gcp_organizations_project.project.project_id
///   location         = "global"
///   access_policy_id = "my-project-policy-"
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.iam.ProjectAccessPolicy;
/// import com.pulumi.gcp.iam.ProjectAccessPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsRuleArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsRuleOperationArgs;
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
///             .projectId("ap-project-")
///             .name("ap-project-")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var iamApi = new Service("iamApi", ServiceArgs.builder()
///             .project(project.projectId())
///             .service("iam.googleapis.com")
///             .disableOnDestroy(false)
///             .build());
///
///         var waitForProjectPropagation = new Sleep("waitForProjectPropagation", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamApi)
///                 .build());
///
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .accountId("svc-acc-")
///             .displayName("Test Service Account for Access Policy")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForProjectPropagation)
///                 .build());
///
///         var example = new ProjectAccessPolicy("example", ProjectAccessPolicyArgs.builder()
///             .project(project.projectId())
///             .location("global")
///             .accessPolicyId("my-project-policy-")
///             .details(ProjectAccessPolicyDetailsArgs.builder()
///                 .rules(ProjectAccessPolicyDetailsRuleArgs.builder()
///                     .effect("ALLOW")
///                     .principals(testSa.email().applyValue(_email -> String.format("principal://iam.googleapis.com/projects/-/serviceAccounts/%s", _email)))
///                     .operation(ProjectAccessPolicyDetailsRuleOperationArgs.builder()
///                         .permissions("eventarc.googleapis.com/messageBuses.publish")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     waitForProjectPropagation,
///                     testSa)
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
///       projectId: ap-project-
///       name: ap-project-
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   iamApi:
///     type: gcp:projects:Service
///     name: iam_api
///     properties:
///       project: ${project.projectId}
///       service: iam.googleapis.com
///       disableOnDestroy: false
///   waitForProjectPropagation:
///     type: time:Sleep
///     name: wait_for_project_propagation
///     properties:
///       createDuration: 30s
///     options:
///       dependsOn:
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
///         - ${waitForProjectPropagation}
///   example:
///     type: gcp:iam:ProjectAccessPolicy
///     properties:
///       project: ${project.projectId}
///       location: global
///       accessPolicyId: my-project-policy-
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
///         - ${waitForProjectPropagation}
///         - ${testSa}
/// ```
///
///
/// ## Import
///
/// ProjectAccessPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/accessPolicies/{{access_policy_id}}`
/// * `{{project}}/{{location}}/{{access_policy_id}}`
/// * `{{location}}/{{access_policy_id}}`
///
///
/// When using the `pulumi import` command, ProjectAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/projectAccessPolicy:ProjectAccessPolicy default projects/{{project}}/locations/{{location}}/accessPolicies/{{access_policy_id}}
/// $ pulumi import gcp:iam/projectAccessPolicy:ProjectAccessPolicy default {{project}}/{{location}}/{{access_policy_id}}
/// $ pulumi import gcp:iam/projectAccessPolicy:ProjectAccessPolicy default {{location}}/{{access_policy_id}}
/// ```
class ProjectAccessPolicy extends pulumi.CustomResource {
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
  late final pulumi.Output<ProjectAccessPolicyDetails?> details;
  /// The description of the access policy. Must be less than
  /// or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The etag for the access policy.
  /// If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the access policy.
  /// The following formats are supported:
  /// * `projects/{project_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `projects/{project_number}/locations/{location}/accessPolicies/{policy_id}`
  /// * `folders/{folder_id}/locations/{location}/accessPolicies/{policy_id}`
  /// * `organizations/{organization_id}/locations/{location}/accessPolicies/{policy_id}`
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The globally unique ID of the access policy.
  late final pulumi.Output<String> uid;
  /// The time when the access policy was most recently
  /// updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProjectAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectAccessPolicy]. {@macro pulumi_iam_project_access_policy_project_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectAccessPolicy(
    String name, {
    ProjectAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/projectAccessPolicy:ProjectAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<ProjectAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ProjectAccessPolicy] resource's state with the given [name] and [id].
  static ProjectAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    ProjectAccessPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/projectAccessPolicy:ProjectAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<ProjectAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ProjectAccessPolicy] resource.
  ProjectAccessPolicy.reference(String urn)
    : super(
        'gcp:iam/projectAccessPolicy:ProjectAccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<ProjectAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}

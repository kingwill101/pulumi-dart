import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_access_policy_args.dart';
import 'organization_access_policy_details.dart';
import 'organization_access_policy_state.dart';

/// Represents an IAM v3 Access Policy parented by a Google Cloud Organization. This policy
/// defines rules that allow or deny access to resources within the specified organization based on principals and conditions.
/// See the Cloud IAM documentation for more details on Access Policies.
///
///
/// To get more information about OrganizationAccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v3/organizations.locations.accessPolicies)
///
/// ## Example Usage
///
/// ### Access Policy Organization Minimal
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
/// }, {
///     dependsOn: [project],
/// });
/// const waitForPropagation = new time.Sleep("wait_for_propagation", {createDuration: "30s"}, {
///     dependsOn: [iamApi],
/// });
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     accountId: "svc-acc-",
///     displayName: "Org Access Policy Test SA",
///     project: project.projectId,
/// }, {
///     dependsOn: [waitForPropagation],
/// });
/// const example = new gcp.iam.OrganizationAccessPolicy("example", {
///     organization: "123456789",
///     location: "global",
///     accessPolicyId: "my-org-policy-",
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
///         testSa,
///         waitForPropagation,
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
///     disable_on_destroy=False,
///     opts = pulumi.ResourceOptions(depends_on=[project]))
/// wait_for_propagation = time.Sleep("wait_for_propagation", create_duration="30s",
/// opts = pulumi.ResourceOptions(depends_on=[iam_api]))
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     account_id="svc-acc-",
///     display_name="Org Access Policy Test SA",
///     project=project.project_id,
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_propagation]))
/// example = gcp.iam.OrganizationAccessPolicy("example",
///     organization="123456789",
///     location="global",
///     access_policy_id="my-org-policy-",
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
///             test_sa,
///             wait_for_propagation,
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
///             iamApi,
///         },
///     });
///
///     var testSa = new Gcp.ServiceAccount.Account("test_sa", new()
///     {
///         AccountId = "svc-acc-",
///         DisplayName = "Org Access Policy Test SA",
///         Project = project.ProjectId,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForPropagation,
///         },
///     });
///
///     var example = new Gcp.Iam.OrganizationAccessPolicy("example", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         AccessPolicyId = "my-org-policy-",
///         Details = new Gcp.Iam.Inputs.OrganizationAccessPolicyDetailsArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.Iam.Inputs.OrganizationAccessPolicyDetailsRuleArgs
///                 {
///                     Effect = "ALLOW",
///                     Principals = new[]
///                     {
///                         testSa.Email.Apply(email => $"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}"),
///                     },
///                     Operation = new Gcp.Iam.Inputs.OrganizationAccessPolicyDetailsRuleOperationArgs
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
///             testSa,
///             waitForPropagation,
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
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForPropagation, err := time.NewSleep(ctx, "wait_for_propagation", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("30s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamApi,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSa, err := serviceaccount.NewAccount(ctx, "test_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("svc-acc-"),
/// 			DisplayName: pulumi.String("Org Access Policy Test SA"),
/// 			Project:     project.ProjectId,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForPropagation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewOrganizationAccessPolicy(ctx, "example", &iam.OrganizationAccessPolicyArgs{
/// 			Organization:   pulumi.String("123456789"),
/// 			Location:       pulumi.String("global"),
/// 			AccessPolicyId: pulumi.String("my-org-policy-"),
/// 			Details: &iam.OrganizationAccessPolicyDetailsArgs{
/// 				Rules: iam.OrganizationAccessPolicyDetailsRuleArray{
/// 					&iam.OrganizationAccessPolicyDetailsRuleArgs{
/// 						Effect: pulumi.String("ALLOW"),
/// 						Principals: pulumi.StringArray{
/// 							testSa.Email.ApplyT(func(email string) (string, error) {
/// 								return fmt.Sprintf("principal://iam.googleapis.com/projects/-/serviceAccounts/%v", email), nil
/// 							}).(pulumi.StringOutput),
/// 						},
/// 						Operation: &iam.OrganizationAccessPolicyDetailsRuleOperationArgs{
/// 							Permissions: pulumi.StringArray{
/// 								pulumi.String("eventarc.googleapis.com/messageBuses.publish"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testSa,
/// 			waitForPropagation,
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
///   depends_on         = [gcp_organizations_project.project]
///   project            = gcp_organizations_project.project.project_id
///   service            = "iam.googleapis.com"
///   disable_on_destroy = false
/// }
/// resource "time_sleep" "wait_for_propagation" {
///   depends_on      = [gcp_projects_service.iam_api]
///   create_duration = "30s"
/// }
/// resource "gcp_serviceaccount_account" "test_sa" {
///   depends_on   = [time_sleep.wait_for_propagation]
///   account_id   = "svc-acc-"
///   display_name = "Org Access Policy Test SA"
///   project      = gcp_organizations_project.project.project_id
/// }
/// resource "gcp_iam_organizationaccesspolicy" "example" {
///   depends_on       = [gcp_serviceaccount_account.test_sa, time_sleep.wait_for_propagation]
///   organization     = "123456789"
///   location         = "global"
///   access_policy_id = "my-org-policy-"
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
/// import com.pulumi.gcp.iam.OrganizationAccessPolicy;
/// import com.pulumi.gcp.iam.OrganizationAccessPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.OrganizationAccessPolicyDetailsArgs;
/// import com.pulumi.gcp.iam.inputs.OrganizationAccessPolicyDetailsRuleArgs;
/// import com.pulumi.gcp.iam.inputs.OrganizationAccessPolicyDetailsRuleOperationArgs;
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
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project)
///                 .build());
///
///         var waitForPropagation = new Sleep("waitForPropagation", SleepArgs.builder()
///             .createDuration("30s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(iamApi)
///                 .build());
///
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .accountId("svc-acc-")
///             .displayName("Org Access Policy Test SA")
///             .project(project.projectId())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForPropagation)
///                 .build());
///
///         var example = new OrganizationAccessPolicy("example", OrganizationAccessPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .accessPolicyId("my-org-policy-")
///             .details(OrganizationAccessPolicyDetailsArgs.builder()
///                 .rules(OrganizationAccessPolicyDetailsRuleArgs.builder()
///                     .effect("ALLOW")
///                     .principals(testSa.email().applyValue(_email -> String.format("principal://iam.googleapis.com/projects/-/serviceAccounts/%s", _email)))
///                     .operation(OrganizationAccessPolicyDetailsRuleOperationArgs.builder()
///                         .permissions("eventarc.googleapis.com/messageBuses.publish")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     testSa,
///                     waitForPropagation)
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
///         - ${iamApi}
///   testSa:
///     type: gcp:serviceaccount:Account
///     name: test_sa
///     properties:
///       accountId: svc-acc-
///       displayName: Org Access Policy Test SA
///       project: ${project.projectId}
///     options:
///       dependsOn:
///         - ${waitForPropagation}
///   example:
///     type: gcp:iam:OrganizationAccessPolicy
///     properties:
///       organization: '123456789'
///       location: global
///       accessPolicyId: my-org-policy-
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
///         - ${testSa}
///         - ${waitForPropagation}
/// ```
///
///
/// ## Import
///
/// OrganizationAccessPolicy can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/accessPolicies/{{access_policy_id}}`
/// * `{{organization}}/{{location}}/{{access_policy_id}}`
///
///
/// When using the `pulumi import` command, OrganizationAccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/organizationAccessPolicy:OrganizationAccessPolicy default organizations/{{organization}}/locations/{{location}}/accessPolicies/{{access_policy_id}}
/// $ pulumi import gcp:iam/organizationAccessPolicy:OrganizationAccessPolicy default {{organization}}/{{location}}/{{access_policy_id}}
/// ```
class OrganizationAccessPolicy extends pulumi.CustomResource {
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
  late final pulumi.Output<OrganizationAccessPolicyDetails?> details;
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
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> organization;
  /// The globally unique ID of the access policy.
  late final pulumi.Output<String> uid;
  /// The time when the access policy was most recently
  /// updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationAccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationAccessPolicy]. {@macro pulumi_iam_organization_access_policy_organization_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationAccessPolicy(
    String name, {
    OrganizationAccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/organizationAccessPolicy:OrganizationAccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<OrganizationAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [OrganizationAccessPolicy] resource's state with the given [name] and [id].
  static OrganizationAccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    OrganizationAccessPolicyState? state,
  }) {
    return OrganizationAccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OrganizationAccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/organizationAccessPolicy:OrganizationAccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPolicyId = registerOutput<String>('accessPolicyId');
    annotations = registerOutput<Map<String, String>?>('annotations');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<OrganizationAccessPolicyDetails?>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationAccessPolicyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    organization = registerOutput<String>('organization');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'projects_policy_binding_args.dart';
import 'projects_policy_binding_condition.dart';
import 'projects_policy_binding_state.dart';
import 'projects_policy_binding_target.dart';

/// A policy binding to a project. This is a Terraform resource, and maps to a policy binding resource in GCP.
///
///
/// To get more information about ProjectsPolicyBinding, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v3/projects.locations.policyBindings)
/// * How-to Guides
/// * [Apply a policy binding](https://cloud.google.com/iam/docs/principal-access-boundary-policies-create#create_binding)
///
/// ## Example Usage
///
/// ### Iam Projects Policy Binding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = gcp.organizations.getProject({});
/// const pabPolicy = new gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy", {
///     organization: "123456789",
///     location: "global",
///     displayName: "binding for all principals in the project",
///     principalAccessBoundaryPolicyId: "my-pab-policy",
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [pabPolicy],
/// });
/// const binding_for_all_project_principals = new gcp.iam.ProjectsPolicyBinding("binding-for-all-project-principals", {
///     project: project.then(project => project.projectId),
///     location: "global",
///     displayName: "binding for all principals in the project",
///     policyKind: "PRINCIPAL_ACCESS_BOUNDARY",
///     policyBindingId: "binding-for-all-project-principals",
///     policy: pulumi.interpolate`organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}`,
///     target: {
///         principalSet: project.then(project => `//cloudresourcemanager.googleapis.com/projects/${project.projectId}`),
///     },
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.get_project()
/// pab_policy = gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy",
///     organization="123456789",
///     location="global",
///     display_name="binding for all principals in the project",
///     principal_access_boundary_policy_id="my-pab-policy")
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[pab_policy]))
/// binding_for_all_project_principals = gcp.iam.ProjectsPolicyBinding("binding-for-all-project-principals",
///     project=project.project_id,
///     location="global",
///     display_name="binding for all principals in the project",
///     policy_kind="PRINCIPAL_ACCESS_BOUNDARY",
///     policy_binding_id="binding-for-all-project-principals",
///     policy=pab_policy.principal_access_boundary_policy_id.apply(lambda principal_access_boundary_policy_id: f"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principal_access_boundary_policy_id}"),
///     target={
///         "principal_set": f"//cloudresourcemanager.googleapis.com/projects/{project.project_id}",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var pabPolicy = new Gcp.Iam.PrincipalAccessBoundaryPolicy("pab_policy", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "binding for all principals in the project",
///         PrincipalAccessBoundaryPolicyId = "my-pab-policy",
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             pabPolicy,
///         },
///     });
///
///     var binding_for_all_project_principals = new Gcp.Iam.ProjectsPolicyBinding("binding-for-all-project-principals", new()
///     {
///         Project = project.Apply(getProjectResult => getProjectResult.ProjectId),
///         Location = "global",
///         DisplayName = "binding for all principals in the project",
///         PolicyKind = "PRINCIPAL_ACCESS_BOUNDARY",
///         PolicyBindingId = "binding-for-all-project-principals",
///         Policy = pabPolicy.PrincipalAccessBoundaryPolicyId.Apply(principalAccessBoundaryPolicyId => $"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principalAccessBoundaryPolicyId}"),
///         Target = new Gcp.Iam.Inputs.ProjectsPolicyBindingTargetArgs
///         {
///             PrincipalSet = $"//cloudresourcemanager.googleapis.com/projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		pabPolicy, err := iam.NewPrincipalAccessBoundaryPolicy(ctx, "pab_policy", &iam.PrincipalAccessBoundaryPolicyArgs{
/// 			Organization:                    pulumi.String("123456789"),
/// 			Location:                        pulumi.String("global"),
/// 			DisplayName:                     pulumi.String("binding for all principals in the project"),
/// 			PrincipalAccessBoundaryPolicyId: pulumi.String("my-pab-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			pabPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewProjectsPolicyBinding(ctx, "binding-for-all-project-principals", &iam.ProjectsPolicyBindingArgs{
/// 			Project:         pulumi.String(project.ProjectId),
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("binding for all principals in the project"),
/// 			PolicyKind:      pulumi.String("PRINCIPAL_ACCESS_BOUNDARY"),
/// 			PolicyBindingId: pulumi.String("binding-for-all-project-principals"),
/// 			Policy: pabPolicy.PrincipalAccessBoundaryPolicyId.ApplyT(func(principalAccessBoundaryPolicyId string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%v", principalAccessBoundaryPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.ProjectsPolicyBindingTargetArgs{
/// 				PrincipalSet: pulumi.Sprintf("//cloudresourcemanager.googleapis.com/projects/%v", project.ProjectId),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_iam_principalaccessboundarypolicy" "pab_policy" {
///   organization                        = "123456789"
///   location                            = "global"
///   display_name                        = "binding for all principals in the project"
///   principal_access_boundary_policy_id = "my-pab-policy"
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_iam_principalaccessboundarypolicy.pab_policy]
///   create_duration = "60s"
/// }
/// resource "gcp_iam_projectspolicybinding" "binding-for-all-project-principals" {
///   depends_on        = [time_sleep.wait_60_seconds]
///   project           = data.gcp_organizations_getproject.project.project_id
///   location          = "global"
///   display_name      = "binding for all principals in the project"
///   policy_kind       = "PRINCIPAL_ACCESS_BOUNDARY"
///   policy_binding_id = "binding-for-all-project-principals"
///   policy            ="organizations/123456789/locations/global/principalAccessBoundaryPolicies/${gcp_iam_principalaccessboundarypolicy.pab_policy.principal_access_boundary_policy_id}"
///   target = {
///     principal_set ="//cloudresourcemanager.googleapis.com/projects/${data.gcp_organizations_getproject.project.project_id}"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicyArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.iam.ProjectsPolicyBinding;
/// import com.pulumi.gcp.iam.ProjectsPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectsPolicyBindingTargetArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var pabPolicy = new PrincipalAccessBoundaryPolicy("pabPolicy", PrincipalAccessBoundaryPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("binding for all principals in the project")
///             .principalAccessBoundaryPolicyId("my-pab-policy")
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(pabPolicy)
///                 .build());
///
///         var binding_for_all_project_principals = new ProjectsPolicyBinding("binding-for-all-project-principals", ProjectsPolicyBindingArgs.builder()
///             .project(project.projectId())
///             .location("global")
///             .displayName("binding for all principals in the project")
///             .policyKind("PRINCIPAL_ACCESS_BOUNDARY")
///             .policyBindingId("binding-for-all-project-principals")
///             .policy(pabPolicy.principalAccessBoundaryPolicyId().applyValue(_principalAccessBoundaryPolicyId -> String.format("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%s", _principalAccessBoundaryPolicyId)))
///             .target(ProjectsPolicyBindingTargetArgs.builder()
///                 .principalSet(String.format("//cloudresourcemanager.googleapis.com/projects/%s", project.projectId()))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   pabPolicy:
///     type: gcp:iam:PrincipalAccessBoundaryPolicy
///     name: pab_policy
///     properties:
///       organization: '123456789'
///       location: global
///       displayName: binding for all principals in the project
///       principalAccessBoundaryPolicyId: my-pab-policy
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${pabPolicy}
///   binding-for-all-project-principals:
///     type: gcp:iam:ProjectsPolicyBinding
///     properties:
///       project: ${project.projectId}
///       location: global
///       displayName: binding for all principals in the project
///       policyKind: PRINCIPAL_ACCESS_BOUNDARY
///       policyBindingId: binding-for-all-project-principals
///       policy: organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}
///       target:
///         principalSet: //cloudresourcemanager.googleapis.com/projects/${project.projectId}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ### Iam Projects Policy Binding Access Policy
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "ap-proj-",
///     name: "ap-proj-",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const iamApi = new gcp.projects.Service("iam_api", {
///     project: project.projectId,
///     service: "iam.googleapis.com",
///     disableOnDestroy: false,
/// });
/// // Binding access policies can be blocked by the managed org policy constraint
/// // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
/// const allowAccessPolicyBinding = new gcp.orgpolicy.Policy("allow_access_policy_binding", {
///     name: pulumi.interpolate`projects/${project.projectId}/policies/iam.managed.disableAccessPolicyBinding`,
///     parent: pulumi.interpolate`projects/${project.projectId}`,
///     spec: {
///         rules: [{
///             enforce: "FALSE",
///         }],
///     },
/// });
/// const waitForProjectSetup = new time.Sleep("wait_for_project_setup", {createDuration: "120s"}, {
///     dependsOn: [
///         iamApi,
///         allowAccessPolicyBinding,
///     ],
/// });
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     project: project.projectId,
///     accountId: "ap-sa-",
///     displayName: "Test Service Account for Access Policy",
/// }, {
///     dependsOn: [waitForProjectSetup],
/// });
/// const accessPolicy = new gcp.iam.ProjectAccessPolicy("access_policy", {
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
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [accessPolicy],
/// });
/// const my_project_access_policy_binding = new gcp.iam.ProjectsPolicyBinding("my-project-access-policy-binding", {
///     project: project.projectId,
///     location: "global",
///     displayName: "Binding for a project access policy",
///     policyKind: "ACCESS",
///     policyBindingId: "my-project-access-binding-",
///     policy: pulumi.interpolate`projects/${project.projectId}/locations/global/accessPolicies/${accessPolicy.accessPolicyId}`,
///     target: {
///         resource: pulumi.interpolate`//cloudresourcemanager.googleapis.com/projects/${project.projectId}`,
///     },
/// }, {
///     dependsOn: [wait60Seconds],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// project = gcp.organizations.Project("project",
///     project_id="ap-proj-",
///     name="ap-proj-",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// iam_api = gcp.projects.Service("iam_api",
///     project=project.project_id,
///     service="iam.googleapis.com",
///     disable_on_destroy=False)
/// # Binding access policies can be blocked by the managed org policy constraint
/// # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
/// allow_access_policy_binding = gcp.orgpolicy.Policy("allow_access_policy_binding",
///     name=project.project_id.apply(lambda project_id: f"projects/{project_id}/policies/iam.managed.disableAccessPolicyBinding"),
///     parent=project.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     spec={
///         "rules": [{
///             "enforce": "FALSE",
///         }],
///     })
/// wait_for_project_setup = time.Sleep("wait_for_project_setup", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         iam_api,
///         allow_access_policy_binding,
///     ]))
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     project=project.project_id,
///     account_id="ap-sa-",
///     display_name="Test Service Account for Access Policy",
///     opts = pulumi.ResourceOptions(depends_on=[wait_for_project_setup]))
/// access_policy = gcp.iam.ProjectAccessPolicy("access_policy",
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
///     })
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[access_policy]))
/// my_project_access_policy_binding = gcp.iam.ProjectsPolicyBinding("my-project-access-policy-binding",
///     project=project.project_id,
///     location="global",
///     display_name="Binding for a project access policy",
///     policy_kind="ACCESS",
///     policy_binding_id="my-project-access-binding-",
///     policy=pulumi.Output.all(
///         project_id=project.project_id,
///         access_policy_id=access_policy.access_policy_id
/// ).apply(lambda resolved_outputs: f"projects/{resolved_outputs['project_id']}/locations/global/accessPolicies/{resolved_outputs['access_policy_id']}")
/// ,
///     target={
///         "resource": project.project_id.apply(lambda project_id: f"//cloudresourcemanager.googleapis.com/projects/{project_id}"),
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait60_seconds]))
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
///         ProjectId = "ap-proj-",
///         Name = "ap-proj-",
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
///     // Binding access policies can be blocked by the managed org policy constraint
///     // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
///     var allowAccessPolicyBinding = new Gcp.OrgPolicy.Policy("allow_access_policy_binding", new()
///     {
///         Name = project.ProjectId.Apply(projectId => $"projects/{projectId}/policies/iam.managed.disableAccessPolicyBinding"),
///         Parent = project.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         Spec = new Gcp.OrgPolicy.Inputs.PolicySpecArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.OrgPolicy.Inputs.PolicySpecRuleArgs
///                 {
///                     Enforce = "FALSE",
///                 },
///             },
///         },
///     });
///
///     var waitForProjectSetup = new Time.Sleep("wait_for_project_setup", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             iamApi,
///             allowAccessPolicyBinding,
///         },
///     });
///
///     var testSa = new Gcp.ServiceAccount.Account("test_sa", new()
///     {
///         Project = project.ProjectId,
///         AccountId = "ap-sa-",
///         DisplayName = "Test Service Account for Access Policy",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             waitForProjectSetup,
///         },
///     });
///
///     var accessPolicy = new Gcp.Iam.ProjectAccessPolicy("access_policy", new()
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
///     });
///
///     var wait60Seconds = new Time.Sleep("wait_60_seconds", new()
///     {
///         CreateDuration = "60s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             accessPolicy,
///         },
///     });
///
///     var my_project_access_policy_binding = new Gcp.Iam.ProjectsPolicyBinding("my-project-access-policy-binding", new()
///     {
///         Project = project.ProjectId,
///         Location = "global",
///         DisplayName = "Binding for a project access policy",
///         PolicyKind = "ACCESS",
///         PolicyBindingId = "my-project-access-binding-",
///         Policy = Output.Tuple(project.ProjectId, accessPolicy.AccessPolicyId).Apply(values =>
///         {
///             var projectId = values.Item1;
///             var accessPolicyId = values.Item2;
///             return $"projects/{projectId}/locations/global/accessPolicies/{accessPolicyId}";
///         }),
///         Target = new Gcp.Iam.Inputs.ProjectsPolicyBindingTargetArgs
///         {
///             Resource = project.ProjectId.Apply(projectId => $"//cloudresourcemanager.googleapis.com/projects/{projectId}"),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait60Seconds,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/orgpolicy"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumiverse/pulumi-time/sdk/go/time"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("ap-proj-"),
/// 			Name:           pulumi.String("ap-proj-"),
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
/// 		// Binding access policies can be blocked by the managed org policy constraint
/// 		// iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
/// 		allowAccessPolicyBinding, err := orgpolicy.NewPolicy(ctx, "allow_access_policy_binding", &orgpolicy.PolicyArgs{
/// 			Name: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/policies/iam.managed.disableAccessPolicyBinding", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", projectId), nil
/// 			}).(pulumi.StringOutput),
/// 			Spec: &orgpolicy.PolicySpecArgs{
/// 				Rules: orgpolicy.PolicySpecRuleArray{
/// 					&orgpolicy.PolicySpecRuleArgs{
/// 						Enforce: pulumi.String("FALSE"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		waitForProjectSetup, err := time.NewSleep(ctx, "wait_for_project_setup", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			iamApi,
/// 			allowAccessPolicyBinding,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSa, err := serviceaccount.NewAccount(ctx, "test_sa", &serviceaccount.AccountArgs{
/// 			Project:     project.ProjectId,
/// 			AccountId:   pulumi.String("ap-sa-"),
/// 			DisplayName: pulumi.String("Test Service Account for Access Policy"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			waitForProjectSetup,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		accessPolicy, err := iam.NewProjectAccessPolicy(ctx, "access_policy", &iam.ProjectAccessPolicyArgs{
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait60Seconds, err := time.NewSleep(ctx, "wait_60_seconds", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("60s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			accessPolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewProjectsPolicyBinding(ctx, "my-project-access-policy-binding", &iam.ProjectsPolicyBindingArgs{
/// 			Project:         project.ProjectId,
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("Binding for a project access policy"),
/// 			PolicyKind:      pulumi.String("ACCESS"),
/// 			PolicyBindingId: pulumi.String("my-project-access-binding-"),
/// 			Policy: pulumi.All(project.ProjectId, accessPolicy.AccessPolicyId).ApplyT(func(_args []interface{}) (string, error) {
/// 				projectId := _args[0].(string)
/// 				accessPolicyId := _args[1].(string)
/// 				return fmt.Sprintf("projects/%v/locations/global/accessPolicies/%v", projectId, accessPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.ProjectsPolicyBindingTargetArgs{
/// 				Resource: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 					return fmt.Sprintf("//cloudresourcemanager.googleapis.com/projects/%v", projectId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait60Seconds,
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
///   project_id      = "ap-proj-"
///   name            = "ap-proj-"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_projects_service" "iam_api" {
///   project            = gcp_organizations_project.project.project_id
///   service            = "iam.googleapis.com"
///   disable_on_destroy = false
/// }
/// # Binding access policies can be blocked by the managed org policy constraint
/// # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
/// resource "gcp_orgpolicy_policy" "allow_access_policy_binding" {
///   name   ="projects/${gcp_organizations_project.project.project_id}/policies/iam.managed.disableAccessPolicyBinding"
///   parent ="projects/${gcp_organizations_project.project.project_id}"
///   spec = {
///     rules = [{
///       "enforce" = "FALSE"
///     }]
///   }
/// }
/// resource "time_sleep" "wait_for_project_setup" {
///   depends_on      = [gcp_projects_service.iam_api, gcp_orgpolicy_policy.allow_access_policy_binding]
///   create_duration = "120s"
/// }
/// resource "gcp_serviceaccount_account" "test_sa" {
///   depends_on   = [time_sleep.wait_for_project_setup]
///   project      = gcp_organizations_project.project.project_id
///   account_id   = "ap-sa-"
///   display_name = "Test Service Account for Access Policy"
/// }
/// resource "gcp_iam_projectaccesspolicy" "access_policy" {
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
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on      = [gcp_iam_projectaccesspolicy.access_policy]
///   create_duration = "60s"
/// }
/// resource "gcp_iam_projectspolicybinding" "my-project-access-policy-binding" {
///   depends_on        = [time_sleep.wait_60_seconds]
///   project           = gcp_organizations_project.project.project_id
///   location          = "global"
///   display_name      = "Binding for a project access policy"
///   policy_kind       = "ACCESS"
///   policy_binding_id = "my-project-access-binding-"
///   policy            ="projects/${gcp_organizations_project.project.project_id}/locations/global/accessPolicies/${gcp_iam_projectaccesspolicy.access_policy.access_policy_id}"
///   target = {
///     resource ="//cloudresourcemanager.googleapis.com/projects/${gcp_organizations_project.project.project_id}"
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
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecRuleArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.iam.ProjectAccessPolicy;
/// import com.pulumi.gcp.iam.ProjectAccessPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsRuleArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectAccessPolicyDetailsRuleOperationArgs;
/// import com.pulumi.gcp.iam.ProjectsPolicyBinding;
/// import com.pulumi.gcp.iam.ProjectsPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.ProjectsPolicyBindingTargetArgs;
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
///             .projectId("ap-proj-")
///             .name("ap-proj-")
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
///         // Binding access policies can be blocked by the managed org policy constraint
///         // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
///         var allowAccessPolicyBinding = new Policy("allowAccessPolicyBinding", PolicyArgs.builder()
///             .name(project.projectId().applyValue(_projectId -> String.format("projects/%s/policies/iam.managed.disableAccessPolicyBinding", _projectId)))
///             .parent(project.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("FALSE")
///                     .build())
///                 .build())
///             .build());
///
///         var waitForProjectSetup = new Sleep("waitForProjectSetup", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     iamApi,
///                     allowAccessPolicyBinding)
///                 .build());
///
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .project(project.projectId())
///             .accountId("ap-sa-")
///             .displayName("Test Service Account for Access Policy")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(waitForProjectSetup)
///                 .build());
///
///         var accessPolicy = new ProjectAccessPolicy("accessPolicy", ProjectAccessPolicyArgs.builder()
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
///             .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(accessPolicy)
///                 .build());
///
///         var my_project_access_policy_binding = new ProjectsPolicyBinding("my-project-access-policy-binding", ProjectsPolicyBindingArgs.builder()
///             .project(project.projectId())
///             .location("global")
///             .displayName("Binding for a project access policy")
///             .policyKind("ACCESS")
///             .policyBindingId("my-project-access-binding-")
///             .policy(Output.tuple(project.projectId(), accessPolicy.accessPolicyId()).applyValue(values -> {
///                 var projectId = values.t1;
///                 var accessPolicyId = values.t2;
///                 return String.format("projects/%s/locations/global/accessPolicies/%s", projectId,accessPolicyId);
///             }))
///             .target(ProjectsPolicyBindingTargetArgs.builder()
///                 .resource(project.projectId().applyValue(_projectId -> String.format("//cloudresourcemanager.googleapis.com/projects/%s", _projectId)))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait60Seconds)
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
///       projectId: ap-proj-
///       name: ap-proj-
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
///   # Binding access policies can be blocked by the managed org policy constraint
///   # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this project.
///   allowAccessPolicyBinding:
///     type: gcp:orgpolicy:Policy
///     name: allow_access_policy_binding
///     properties:
///       name: projects/${project.projectId}/policies/iam.managed.disableAccessPolicyBinding
///       parent: projects/${project.projectId}
///       spec:
///         rules:
///           - enforce: FALSE
///   waitForProjectSetup:
///     type: time:Sleep
///     name: wait_for_project_setup
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${iamApi}
///         - ${allowAccessPolicyBinding}
///   testSa:
///     type: gcp:serviceaccount:Account
///     name: test_sa
///     properties:
///       project: ${project.projectId}
///       accountId: ap-sa-
///       displayName: Test Service Account for Access Policy
///     options:
///       dependsOn:
///         - ${waitForProjectSetup}
///   accessPolicy:
///     type: gcp:iam:ProjectAccessPolicy
///     name: access_policy
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
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${accessPolicy}
///   my-project-access-policy-binding:
///     type: gcp:iam:ProjectsPolicyBinding
///     properties:
///       project: ${project.projectId}
///       location: global
///       displayName: Binding for a project access policy
///       policyKind: ACCESS
///       policyBindingId: my-project-access-binding-
///       policy: projects/${project.projectId}/locations/global/accessPolicies/${accessPolicy.accessPolicyId}
///       target:
///         resource: //cloudresourcemanager.googleapis.com/projects/${project.projectId}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// ProjectsPolicyBinding can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
/// * `{{project}}/{{location}}/{{policy_binding_id}}`
/// * `{{location}}/{{policy_binding_id}}`
///
///
/// When using the `pulumi import` command, ProjectsPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default projects/{{project}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default {{project}}/{{location}}/{{policy_binding_id}}
/// $ pulumi import gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding default {{location}}/{{policy_binding_id}}
/// ```
class ProjectsPolicyBinding extends pulumi.CustomResource {
  /// Optional. User defined annotations. See https://google.aip.dev/148#annotations for more details such as format and size limitations
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// Represents a textual expression in the Common Expression Language
  /// (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of
  /// CEL are documented at https://github.com/google/cel-spec.
  /// Example (Comparison):
  /// title: \"Summary size limit\"
  /// description: \"Determines if a summary is less than 100 chars\"
  /// expression: \"document.summary.size() &lt; 100\"
  /// Example
  /// (Equality):
  /// title: \"Requestor is owner\"
  /// description: \"Determines if requestor is the document owner\"
  /// expression: \"document.owner == request.auth.claims.email\"  Example
  /// (Logic):
  /// title: \"Public documents\"
  /// description: \"Determine whether the document should be publicly visible\"
  /// expression: \"document.type != 'private' && document.type != 'internal'\"
  /// Example (Data Manipulation):
  /// title: \"Notification string\"
  /// description: \"Create a notification string with a timestamp.\"
  /// expression: \"'New message received at ' + string(document.create_time)\"
  /// The exact variables and functions that may be referenced within an expression are
  /// determined by the service that evaluates it. See the service documentation for
  /// additional information.
  /// Conditions are currently only supported when the bound policy is a principal access boundary policy.
  /// Structure is documented below.
  late final pulumi.Output<ProjectsPolicyBindingCondition?> condition;
  /// Output only. The time when the policy binding was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Optional. The description of the policy binding. Must be less than or equal to 63 characters.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// Optional. The etag for the policy binding. If this is provided on update, it must match the server's etag.
  late final pulumi.Output<String> etag;
  /// The location of the Policy Binding
  late final pulumi.Output<String> location;
  /// The name of the policy binding in the format `{binding_parent/locations/{location}/policyBindings/{policy_binding_id}`
  late final pulumi.Output<String> name;
  /// Required. Immutable. The resource name of the policy to be bound. The binding parent and policy must belong to the same Organization (or Project).
  late final pulumi.Output<String> policy;
  /// The Policy Binding ID.
  late final pulumi.Output<String> policyBindingId;
  /// Immutable. The kind of the policy to attach in this binding. This
  /// field must be one of the following:  - Left empty (will be automatically set
  /// to the policy kind) - The input policy kind   Possible values:  POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
  late final pulumi.Output<String?> policyKind;
  /// Output only. The globally unique ID of the policy to be bound.
  late final pulumi.Output<String> policyUid;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Exactly one of `principalSet` (for principal access boundary policy bindings) or
  /// `resource` (for access policy bindings) must be set.
  /// Structure is documented below.
  late final pulumi.Output<ProjectsPolicyBindingTarget> target;
  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the policy binding was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ProjectsPolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProjectsPolicyBinding]. {@macro pulumi_iam_projects_policy_binding_projects_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProjectsPolicyBinding(
    String name, {
    ProjectsPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<ProjectsPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    project = registerOutput<String>('project');
    target = registerOutput<ProjectsPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [ProjectsPolicyBinding] resource's state with the given [name] and [id].
  static ProjectsPolicyBinding get(
    String name,
    pulumi.Input<String> id, {
    ProjectsPolicyBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ProjectsPolicyBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ProjectsPolicyBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<ProjectsPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    project = registerOutput<String>('project');
    target = registerOutput<ProjectsPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [ProjectsPolicyBinding] resource.
  ProjectsPolicyBinding.reference(String urn)
    : super(
        'gcp:iam/projectsPolicyBinding:ProjectsPolicyBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<ProjectsPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    project = registerOutput<String>('project');
    target = registerOutput<ProjectsPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProjectsPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}

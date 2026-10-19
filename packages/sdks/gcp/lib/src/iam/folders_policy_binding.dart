import 'package:pulumi/pulumi.dart' as pulumi;
import 'folders_policy_binding_args.dart';
import 'folders_policy_binding_condition.dart';
import 'folders_policy_binding_state.dart';
import 'folders_policy_binding_target.dart';

/// A policy binding to a folder. This is a Terraform resource, and maps to a policy binding resource in GCP.
///
///
/// To get more information about FoldersPolicyBinding, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v3/folders.locations.policyBindings)
/// * How-to Guides
/// * [Apply a policy binding](https://cloud.google.com/iam/docs/principal-access-boundary-policies-create#create_binding)
///
/// ## Example Usage
///
/// ### Iam Folders Policy Binding
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as time from "@pulumiverse/time";
///
/// const pabPolicy = new gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy", {
///     organization: "123456789",
///     location: "global",
///     displayName: "binding for all principals in the folder",
///     principalAccessBoundaryPolicyId: "my-pab-policy",
/// });
/// const folder = new gcp.organizations.Folder("folder", {
///     displayName: "my folder",
///     parent: "organizations/123456789",
///     deletionProtection: false,
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [folder],
/// });
/// const binding_for_all_folder_principals = new gcp.iam.FoldersPolicyBinding("binding-for-all-folder-principals", {
///     folder: folder.folderId,
///     location: "global",
///     displayName: "binding for all principals in the folder",
///     policyKind: "PRINCIPAL_ACCESS_BOUNDARY",
///     policyBindingId: "binding-for-all-folder-principals",
///     policy: pulumi.interpolate`organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}`,
///     target: {
///         principalSet: pulumi.interpolate`//cloudresourcemanager.googleapis.com/folders/${folder.folderId}`,
///     },
/// }, {
///     dependsOn: [wait120s],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumiverse_time as time
///
/// pab_policy = gcp.iam.PrincipalAccessBoundaryPolicy("pab_policy",
///     organization="123456789",
///     location="global",
///     display_name="binding for all principals in the folder",
///     principal_access_boundary_policy_id="my-pab-policy")
/// folder = gcp.organizations.Folder("folder",
///     display_name="my folder",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[folder]))
/// binding_for_all_folder_principals = gcp.iam.FoldersPolicyBinding("binding-for-all-folder-principals",
///     folder=folder.folder_id,
///     location="global",
///     display_name="binding for all principals in the folder",
///     policy_kind="PRINCIPAL_ACCESS_BOUNDARY",
///     policy_binding_id="binding-for-all-folder-principals",
///     policy=pab_policy.principal_access_boundary_policy_id.apply(lambda principal_access_boundary_policy_id: f"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principal_access_boundary_policy_id}"),
///     target={
///         "principal_set": folder.folder_id.apply(lambda folder_id: f"//cloudresourcemanager.googleapis.com/folders/{folder_id}"),
///     },
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
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
///     var pabPolicy = new Gcp.Iam.PrincipalAccessBoundaryPolicy("pab_policy", new()
///     {
///         Organization = "123456789",
///         Location = "global",
///         DisplayName = "binding for all principals in the folder",
///         PrincipalAccessBoundaryPolicyId = "my-pab-policy",
///     });
///
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "my folder",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///         },
///     });
///
///     var binding_for_all_folder_principals = new Gcp.Iam.FoldersPolicyBinding("binding-for-all-folder-principals", new()
///     {
///         Folder = folder.FolderId,
///         Location = "global",
///         DisplayName = "binding for all principals in the folder",
///         PolicyKind = "PRINCIPAL_ACCESS_BOUNDARY",
///         PolicyBindingId = "binding-for-all-folder-principals",
///         Policy = pabPolicy.PrincipalAccessBoundaryPolicyId.Apply(principalAccessBoundaryPolicyId => $"organizations/123456789/locations/global/principalAccessBoundaryPolicies/{principalAccessBoundaryPolicyId}"),
///         Target = new Gcp.Iam.Inputs.FoldersPolicyBindingTargetArgs
///         {
///             PrincipalSet = folder.FolderId.Apply(folderId => $"//cloudresourcemanager.googleapis.com/folders/{folderId}"),
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             wait120s,
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
/// 		pabPolicy, err := iam.NewPrincipalAccessBoundaryPolicy(ctx, "pab_policy", &iam.PrincipalAccessBoundaryPolicyArgs{
/// 			Organization:                    pulumi.String("123456789"),
/// 			Location:                        pulumi.String("global"),
/// 			DisplayName:                     pulumi.String("binding for all principals in the folder"),
/// 			PrincipalAccessBoundaryPolicyId: pulumi.String("my-pab-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		folder, err := organizations.NewFolder(ctx, "folder", &organizations.FolderArgs{
/// 			DisplayName:        pulumi.String("my folder"),
/// 			Parent:             pulumi.String("organizations/123456789"),
/// 			DeletionProtection: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewFoldersPolicyBinding(ctx, "binding-for-all-folder-principals", &iam.FoldersPolicyBindingArgs{
/// 			Folder:          folder.FolderId,
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("binding for all principals in the folder"),
/// 			PolicyKind:      pulumi.String("PRINCIPAL_ACCESS_BOUNDARY"),
/// 			PolicyBindingId: pulumi.String("binding-for-all-folder-principals"),
/// 			Policy: pabPolicy.PrincipalAccessBoundaryPolicyId.ApplyT(func(principalAccessBoundaryPolicyId string) (string, error) {
/// 				return fmt.Sprintf("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%v", principalAccessBoundaryPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.FoldersPolicyBindingTargetArgs{
/// 				PrincipalSet: folder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 					return fmt.Sprintf("//cloudresourcemanager.googleapis.com/folders/%v", folderId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			wait120s,
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
/// resource "gcp_iam_principal_access_boundary_policy" "pab_policy" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   organization                        = "123456789"
///   location                            = "global"
///   display_name                        = "binding for all principals in the folder"
///   principal_access_boundary_policy_id = "my-pab-policy"
/// }
/// resource "gcp_organizations_folder" "folder" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name        = "my folder"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// resource "time_sleep" "wait_120s" {
///   depends_on = [gcp_organizations_folder.folder]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "120s"
/// }
/// resource "gcp_iam_folders_policy_binding" "binding-for-all-folder-principals" {
///   depends_on = [time_sleep.wait_120s]
///   lifecycle {
///     create_before_destroy = true
///   }
///   folder            = gcp_organizations_folder.folder.folder_id
///   location          = "global"
///   display_name      = "binding for all principals in the folder"
///   policy_kind       = "PRINCIPAL_ACCESS_BOUNDARY"
///   policy_binding_id = "binding-for-all-folder-principals"
///   policy            ="organizations/123456789/locations/global/principalAccessBoundaryPolicies/${gcp_iam_principal_access_boundary_policy.pab_policy.principal_access_boundary_policy_id}"
///   target = {
///     principal_set ="//cloudresourcemanager.googleapis.com/folders/${gcp_organizations_folder.folder.folder_id}"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicy;
/// import com.pulumi.gcp.iam.PrincipalAccessBoundaryPolicyArgs;
/// import com.pulumi.gcp.organizations.Folder;
/// import com.pulumi.gcp.organizations.FolderArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.iam.FoldersPolicyBinding;
/// import com.pulumi.gcp.iam.FoldersPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.FoldersPolicyBindingTargetArgs;
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
///         var pabPolicy = new PrincipalAccessBoundaryPolicy("pabPolicy", PrincipalAccessBoundaryPolicyArgs.builder()
///             .organization("123456789")
///             .location("global")
///             .displayName("binding for all principals in the folder")
///             .principalAccessBoundaryPolicyId("my-pab-policy")
///             .build());
///
///         var folder = new Folder("folder", FolderArgs.builder()
///             .displayName("my folder")
///             .parent("organizations/123456789")
///             .deletionProtection(false)
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(folder)
///                 .build());
///
///         var binding_for_all_folder_principals = new FoldersPolicyBinding("binding-for-all-folder-principals", FoldersPolicyBindingArgs.builder()
///             .folder(folder.folderId())
///             .location("global")
///             .displayName("binding for all principals in the folder")
///             .policyKind("PRINCIPAL_ACCESS_BOUNDARY")
///             .policyBindingId("binding-for-all-folder-principals")
///             .policy(pabPolicy.principalAccessBoundaryPolicyId().applyValue(_principalAccessBoundaryPolicyId -> String.format("organizations/123456789/locations/global/principalAccessBoundaryPolicies/%s", _principalAccessBoundaryPolicyId)))
///             .target(FoldersPolicyBindingTargetArgs.builder()
///                 .principalSet(folder.folderId().applyValue(_folderId -> String.format("//cloudresourcemanager.googleapis.com/folders/%s", _folderId)))
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(wait120s)
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
///       displayName: binding for all principals in the folder
///       principalAccessBoundaryPolicyId: my-pab-policy
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: my folder
///       parent: organizations/123456789
///       deletionProtection: false
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${folder}
///   binding-for-all-folder-principals:
///     type: gcp:iam:FoldersPolicyBinding
///     properties:
///       folder: ${folder.folderId}
///       location: global
///       displayName: binding for all principals in the folder
///       policyKind: PRINCIPAL_ACCESS_BOUNDARY
///       policyBindingId: binding-for-all-folder-principals
///       policy: organizations/123456789/locations/global/principalAccessBoundaryPolicies/${pabPolicy.principalAccessBoundaryPolicyId}
///       target:
///         principalSet: //cloudresourcemanager.googleapis.com/folders/${folder.folderId}
///     options:
///       dependsOn:
///         - ${wait120s}
/// ```
///
/// ### Iam Folders Policy Binding Access Policy
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
/// // Binding access policies can be blocked by the managed org policy constraint
/// // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
/// const allowAccessPolicyBinding = new gcp.orgpolicy.Policy("allow_access_policy_binding", {
///     name: pulumi.interpolate`folders/${folder.folderId}/policies/iam.managed.disableAccessPolicyBinding`,
///     parent: pulumi.interpolate`folders/${folder.folderId}`,
///     spec: {
///         rules: [{
///             enforce: "FALSE",
///         }],
///     },
/// });
/// const wait120s = new time.Sleep("wait_120s", {createDuration: "120s"}, {
///     dependsOn: [
///         folder,
///         allowAccessPolicyBinding,
///     ],
/// });
/// const testSa = new gcp.serviceaccount.Account("test_sa", {
///     accountId: "ap-sa-",
///     displayName: "Test Service Account for Access Policy",
/// });
/// const accessPolicy = new gcp.iam.FolderAccessPolicy("access_policy", {
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
///     dependsOn: [wait120s],
/// });
/// const wait60Seconds = new time.Sleep("wait_60_seconds", {createDuration: "60s"}, {
///     dependsOn: [accessPolicy],
/// });
/// const my_folder_access_policy_binding = new gcp.iam.FoldersPolicyBinding("my-folder-access-policy-binding", {
///     folder: folder.folderId,
///     location: "global",
///     displayName: "Binding for a folder access policy",
///     policyKind: "ACCESS",
///     policyBindingId: "my-folder-access-binding-",
///     policy: pulumi.interpolate`folders/${folder.folderId}/locations/global/accessPolicies/${accessPolicy.accessPolicyId}`,
///     target: {
///         resource: pulumi.interpolate`//cloudresourcemanager.googleapis.com/folders/${folder.folderId}`,
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
/// folder = gcp.organizations.Folder("folder",
///     display_name="ap-folder-",
///     parent="organizations/123456789",
///     deletion_protection=False)
/// # Binding access policies can be blocked by the managed org policy constraint
/// # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
/// allow_access_policy_binding = gcp.orgpolicy.Policy("allow_access_policy_binding",
///     name=folder.folder_id.apply(lambda folder_id: f"folders/{folder_id}/policies/iam.managed.disableAccessPolicyBinding"),
///     parent=folder.folder_id.apply(lambda folder_id: f"folders/{folder_id}"),
///     spec={
///         "rules": [{
///             "enforce": "FALSE",
///         }],
///     })
/// wait120s = time.Sleep("wait_120s", create_duration="120s",
/// opts = pulumi.ResourceOptions(depends_on=[
///         folder,
///         allow_access_policy_binding,
///     ]))
/// test_sa = gcp.serviceaccount.Account("test_sa",
///     account_id="ap-sa-",
///     display_name="Test Service Account for Access Policy")
/// access_policy = gcp.iam.FolderAccessPolicy("access_policy",
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
///     opts = pulumi.ResourceOptions(depends_on=[wait120s]))
/// wait60_seconds = time.Sleep("wait_60_seconds", create_duration="60s",
/// opts = pulumi.ResourceOptions(depends_on=[access_policy]))
/// my_folder_access_policy_binding = gcp.iam.FoldersPolicyBinding("my-folder-access-policy-binding",
///     folder=folder.folder_id,
///     location="global",
///     display_name="Binding for a folder access policy",
///     policy_kind="ACCESS",
///     policy_binding_id="my-folder-access-binding-",
///     policy=pulumi.Output.all(
///         folder_id=folder.folder_id,
///         access_policy_id=access_policy.access_policy_id
/// ).apply(lambda resolved_outputs: f"folders/{resolved_outputs['folder_id']}/locations/global/accessPolicies/{resolved_outputs['access_policy_id']}")
/// ,
///     target={
///         "resource": folder.folder_id.apply(lambda folder_id: f"//cloudresourcemanager.googleapis.com/folders/{folder_id}"),
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
///     var folder = new Gcp.Organizations.Folder("folder", new()
///     {
///         DisplayName = "ap-folder-",
///         Parent = "organizations/123456789",
///         DeletionProtection = false,
///     });
///
///     // Binding access policies can be blocked by the managed org policy constraint
///     // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
///     var allowAccessPolicyBinding = new Gcp.OrgPolicy.Policy("allow_access_policy_binding", new()
///     {
///         Name = folder.FolderId.Apply(folderId => $"folders/{folderId}/policies/iam.managed.disableAccessPolicyBinding"),
///         Parent = folder.FolderId.Apply(folderId => $"folders/{folderId}"),
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
///     var wait120s = new Time.Sleep("wait_120s", new()
///     {
///         CreateDuration = "120s",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             folder,
///             allowAccessPolicyBinding,
///         },
///     });
///
///     var testSa = new Gcp.ServiceAccount.Account("test_sa", new()
///     {
///         AccountId = "ap-sa-",
///         DisplayName = "Test Service Account for Access Policy",
///     });
///
///     var accessPolicy = new Gcp.Iam.FolderAccessPolicy("access_policy", new()
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
///             wait120s,
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
///     var my_folder_access_policy_binding = new Gcp.Iam.FoldersPolicyBinding("my-folder-access-policy-binding", new()
///     {
///         Folder = folder.FolderId,
///         Location = "global",
///         DisplayName = "Binding for a folder access policy",
///         PolicyKind = "ACCESS",
///         PolicyBindingId = "my-folder-access-binding-",
///         Policy = Output.Tuple(folder.FolderId, accessPolicy.AccessPolicyId).Apply(values =>
///         {
///             var folderId = values.Item1;
///             var accessPolicyId = values.Item2;
///             return $"folders/{folderId}/locations/global/accessPolicies/{accessPolicyId}";
///         }),
///         Target = new Gcp.Iam.Inputs.FoldersPolicyBindingTargetArgs
///         {
///             Resource = folder.FolderId.Apply(folderId => $"//cloudresourcemanager.googleapis.com/folders/{folderId}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/serviceaccount"
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
/// 		// Binding access policies can be blocked by the managed org policy constraint
/// 		// iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
/// 		allowAccessPolicyBinding, err := orgpolicy.NewPolicy(ctx, "allow_access_policy_binding", &orgpolicy.PolicyArgs{
/// 			Name: folder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 				return fmt.Sprintf("folders/%v/policies/iam.managed.disableAccessPolicyBinding", folderId), nil
/// 			}).(pulumi.StringOutput),
/// 			Parent: folder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 				return fmt.Sprintf("folders/%v", folderId), nil
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
/// 		wait120s, err := time.NewSleep(ctx, "wait_120s", &time.SleepArgs{
/// 			CreateDuration: pulumi.String("120s"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			folder,
/// 			allowAccessPolicyBinding,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testSa, err := serviceaccount.NewAccount(ctx, "test_sa", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("ap-sa-"),
/// 			DisplayName: pulumi.String("Test Service Account for Access Policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		accessPolicy, err := iam.NewFolderAccessPolicy(ctx, "access_policy", &iam.FolderAccessPolicyArgs{
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
/// 			wait120s,
/// 		}))
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
/// 		_, err = iam.NewFoldersPolicyBinding(ctx, "my-folder-access-policy-binding", &iam.FoldersPolicyBindingArgs{
/// 			Folder:          folder.FolderId,
/// 			Location:        pulumi.String("global"),
/// 			DisplayName:     pulumi.String("Binding for a folder access policy"),
/// 			PolicyKind:      pulumi.String("ACCESS"),
/// 			PolicyBindingId: pulumi.String("my-folder-access-binding-"),
/// 			Policy: pulumi.All(folder.FolderId, accessPolicy.AccessPolicyId).ApplyT(func(_args []interface{}) (string, error) {
/// 				folderId := _args[0].(string)
/// 				accessPolicyId := _args[1].(string)
/// 				return fmt.Sprintf("folders/%v/locations/global/accessPolicies/%v", folderId, accessPolicyId), nil
/// 			}).(pulumi.StringOutput),
/// 			Target: &iam.FoldersPolicyBindingTargetArgs{
/// 				Resource: folder.FolderId.ApplyT(func(folderId string) (string, error) {
/// 					return fmt.Sprintf("//cloudresourcemanager.googleapis.com/folders/%v", folderId), nil
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
/// resource "gcp_organizations_folder" "folder" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   display_name        = "ap-folder-"
///   parent              = "organizations/123456789"
///   deletion_protection = false
/// }
/// # Binding access policies can be blocked by the managed org policy constraint
/// # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
/// resource "gcp_orgpolicy_policy" "allow_access_policy_binding" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name   ="folders/${gcp_organizations_folder.folder.folder_id}/policies/iam.managed.disableAccessPolicyBinding"
///   parent ="folders/${gcp_organizations_folder.folder.folder_id}"
///   spec = {
///     rules = [{
///       enforce = "FALSE"
///     }]
///   }
/// }
/// resource "time_sleep" "wait_120s" {
///   depends_on = [gcp_organizations_folder.folder, gcp_orgpolicy_policy.allow_access_policy_binding]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "120s"
/// }
/// resource "gcp_serviceaccount_account" "test_sa" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "ap-sa-"
///   display_name = "Test Service Account for Access Policy"
/// }
/// resource "gcp_iam_folder_access_policy" "access_policy" {
///   depends_on = [time_sleep.wait_120s]
///   lifecycle {
///     create_before_destroy = true
///   }
///   folder           = gcp_organizations_folder.folder.folder_id
///   location         = "global"
///   access_policy_id = "my-folder-policy-"
///   details = {
///     rules = [{
///       effect     = "ALLOW"
///       principals = ["principal://iam.googleapis.com/projects/-/serviceAccounts/${gcp_serviceaccount_account.test_sa.email}"]
///       operation = {
///         permissions = ["eventarc.googleapis.com/messageBuses.publish"]
///       }
///     }]
///   }
/// }
/// resource "time_sleep" "wait_60_seconds" {
///   depends_on = [gcp_iam_folder_access_policy.access_policy]
///   lifecycle {
///     create_before_destroy = true
///   }
///   create_duration = "60s"
/// }
/// resource "gcp_iam_folders_policy_binding" "my-folder-access-policy-binding" {
///   depends_on = [time_sleep.wait_60_seconds]
///   lifecycle {
///     create_before_destroy = true
///   }
///   folder            = gcp_organizations_folder.folder.folder_id
///   location          = "global"
///   display_name      = "Binding for a folder access policy"
///   policy_kind       = "ACCESS"
///   policy_binding_id = "my-folder-access-binding-"
///   policy            ="folders/${gcp_organizations_folder.folder.folder_id}/locations/global/accessPolicies/${gcp_iam_folder_access_policy.access_policy.access_policy_id}"
///   target = {
///     resource ="//cloudresourcemanager.googleapis.com/folders/${gcp_organizations_folder.folder.folder_id}"
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
/// import com.pulumi.gcp.orgpolicy.Policy;
/// import com.pulumi.gcp.orgpolicy.PolicyArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecArgs;
/// import com.pulumi.gcp.orgpolicy.inputs.PolicySpecRuleArgs;
/// import com.pulumiverse.time.Sleep;
/// import com.pulumiverse.time.SleepArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.iam.FolderAccessPolicy;
/// import com.pulumi.gcp.iam.FolderAccessPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsRuleArgs;
/// import com.pulumi.gcp.iam.inputs.FolderAccessPolicyDetailsRuleOperationArgs;
/// import com.pulumi.gcp.iam.FoldersPolicyBinding;
/// import com.pulumi.gcp.iam.FoldersPolicyBindingArgs;
/// import com.pulumi.gcp.iam.inputs.FoldersPolicyBindingTargetArgs;
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
///         // Binding access policies can be blocked by the managed org policy constraint
///         // iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
///         var allowAccessPolicyBinding = new Policy("allowAccessPolicyBinding", PolicyArgs.builder()
///             .name(folder.folderId().applyValue(_folderId -> String.format("folders/%s/policies/iam.managed.disableAccessPolicyBinding", _folderId)))
///             .parent(folder.folderId().applyValue(_folderId -> String.format("folders/%s", _folderId)))
///             .spec(PolicySpecArgs.builder()
///                 .rules(PolicySpecRuleArgs.builder()
///                     .enforce("FALSE")
///                     .build())
///                 .build())
///             .build());
///
///         var wait120s = new Sleep("wait120s", SleepArgs.builder()
///             .createDuration("120s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     folder,
///                     allowAccessPolicyBinding)
///                 .build());
///
///         var testSa = new Account("testSa", AccountArgs.builder()
///             .accountId("ap-sa-")
///             .displayName("Test Service Account for Access Policy")
///             .build());
///
///         var accessPolicy = new FolderAccessPolicy("accessPolicy", FolderAccessPolicyArgs.builder()
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
///                 .dependsOn(wait120s)
///                 .build());
///
///         var wait60Seconds = new Sleep("wait60Seconds", SleepArgs.builder()
///             .createDuration("60s")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(accessPolicy)
///                 .build());
///
///         var my_folder_access_policy_binding = new FoldersPolicyBinding("my-folder-access-policy-binding", FoldersPolicyBindingArgs.builder()
///             .folder(folder.folderId())
///             .location("global")
///             .displayName("Binding for a folder access policy")
///             .policyKind("ACCESS")
///             .policyBindingId("my-folder-access-binding-")
///             .policy(Output.tuple(folder.folderId(), accessPolicy.accessPolicyId()).applyValue(values -> {
///                 var folderId = values.t1;
///                 var accessPolicyId = values.t2;
///                 return String.format("folders/%s/locations/global/accessPolicies/%s", folderId,accessPolicyId);
///             }))
///             .target(FoldersPolicyBindingTargetArgs.builder()
///                 .resource(folder.folderId().applyValue(_folderId -> String.format("//cloudresourcemanager.googleapis.com/folders/%s", _folderId)))
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
///   folder:
///     type: gcp:organizations:Folder
///     properties:
///       displayName: ap-folder-
///       parent: organizations/123456789
///       deletionProtection: false
///   # Binding access policies can be blocked by the managed org policy constraint
///   # iam.managed.disableAccessPolicyBinding. Make sure it is not enforced on this folder.
///   allowAccessPolicyBinding:
///     type: gcp:orgpolicy:Policy
///     name: allow_access_policy_binding
///     properties:
///       name: folders/${folder.folderId}/policies/iam.managed.disableAccessPolicyBinding
///       parent: folders/${folder.folderId}
///       spec:
///         rules:
///           - enforce: FALSE
///   wait120s:
///     type: time:Sleep
///     name: wait_120s
///     properties:
///       createDuration: 120s
///     options:
///       dependsOn:
///         - ${folder}
///         - ${allowAccessPolicyBinding}
///   testSa:
///     type: gcp:serviceaccount:Account
///     name: test_sa
///     properties:
///       accountId: ap-sa-
///       displayName: Test Service Account for Access Policy
///   accessPolicy:
///     type: gcp:iam:FolderAccessPolicy
///     name: access_policy
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
///         - ${wait120s}
///   wait60Seconds:
///     type: time:Sleep
///     name: wait_60_seconds
///     properties:
///       createDuration: 60s
///     options:
///       dependsOn:
///         - ${accessPolicy}
///   my-folder-access-policy-binding:
///     type: gcp:iam:FoldersPolicyBinding
///     properties:
///       folder: ${folder.folderId}
///       location: global
///       displayName: Binding for a folder access policy
///       policyKind: ACCESS
///       policyBindingId: my-folder-access-binding-
///       policy: folders/${folder.folderId}/locations/global/accessPolicies/${accessPolicy.accessPolicyId}
///       target:
///         resource: //cloudresourcemanager.googleapis.com/folders/${folder.folderId}
///     options:
///       dependsOn:
///         - ${wait60Seconds}
/// ```
///
///
/// ## Import
///
/// FoldersPolicyBinding can be imported using any of these accepted formats:
///
/// * `folders/{{folder}}/locations/{{location}}/policyBindings/{{policy_binding_id}}`
/// * `{{folder}}/{{location}}/{{policy_binding_id}}`
///
///
/// When using the `pulumi import` command, FoldersPolicyBinding can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/foldersPolicyBinding:FoldersPolicyBinding default folders/{{folder}}/locations/{{location}}/policyBindings/{{policy_binding_id}}
/// $ pulumi import gcp:iam/foldersPolicyBinding:FoldersPolicyBinding default {{folder}}/{{location}}/{{policy_binding_id}}
/// ```
class FoldersPolicyBinding extends pulumi.CustomResource {
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
  late final pulumi.Output<FoldersPolicyBindingCondition?> condition;
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
  /// The parent folder for the PolicyBinding.
  late final pulumi.Output<String> folder;
  /// The location of the PolicyBinding.
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
  /// Target is the full resource name of the resource to which the policy will be bound. Immutable once set.
  /// Exactly one of `principalSet` (for principal access boundary policy bindings) or
  /// `resource` (for access policy bindings) must be set.
  /// Structure is documented below.
  late final pulumi.Output<FoldersPolicyBindingTarget> target;
  /// Output only. The globally unique ID of the policy binding. Assigned when the policy binding is created.
  late final pulumi.Output<String> uid;
  /// Output only. The time when the policy binding was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [FoldersPolicyBinding].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FoldersPolicyBinding]. {@macro pulumi_iam_folders_policy_binding_folders_policy_binding_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FoldersPolicyBinding(
    String name, {
    FoldersPolicyBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/foldersPolicyBinding:FoldersPolicyBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.1.1').merge(options),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<FoldersPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    target = registerOutput<FoldersPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [FoldersPolicyBinding] resource's state with the given [name] and [id].
  static FoldersPolicyBinding get(
    String name,
    pulumi.Input<String> id, {
    FoldersPolicyBindingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FoldersPolicyBinding._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FoldersPolicyBinding._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/foldersPolicyBinding:FoldersPolicyBinding',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<FoldersPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    target = registerOutput<FoldersPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [FoldersPolicyBinding] resource.
  FoldersPolicyBinding.reference(String urn)
    : super(
        'gcp:iam/foldersPolicyBinding:FoldersPolicyBinding',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    condition = registerOutput<FoldersPolicyBindingCondition?>('condition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingCondition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    etag = registerOutput<String>('etag');
    folder = registerOutput<String>('folder');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String>('policy');
    policyBindingId = registerOutput<String>('policyBindingId');
    policyKind = registerOutput<String?>('policyKind');
    policyUid = registerOutput<String>('policyUid');
    target = registerOutput<FoldersPolicyBindingTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FoldersPolicyBindingTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
